import UIKit
import Flutter
import NetworkExtension

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    var controller: FlutterViewController!
    var vpnChannel: FlutterMethodChannel!

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    controller = window?.rootViewController as? FlutterViewController
            vpnChannel = FlutterMethodChannel(name: "flutter_protego_vpn", binaryMessenger: controller.binaryMessenger)

            // Set up the method handler
            vpnChannel.setMethodCallHandler { [weak self] (call, result) in
                self?.handleVpnMethodCall(call, result: result)
            }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

    func handleVpnMethodCall(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "configureVPN" {
            let arguments = call.arguments as? [String: Any] ?? [:]
            let server = arguments["server"] as? String ?? ""
            let username = arguments["username"] as? String ?? ""
            let certificatePath = arguments["certificatePath"] as? String ?? ""

            let manager = NEVPNManager.shared()
            manager.loadFromPreferences { error in
                if error != nil {
                    result("Error loading VPN preferences: \(error!.localizedDescription)")
                } else {
                    let p = NEVPNProtocolIKEv2()
                    p.username = username
                    p.serverAddress = server
                    // Set the authentication method to .certificate
                    p.authenticationMethod = .certificate

                    // Set the `identityData` property with the contents of the certificate file
                    if let certificateData = try? Data(contentsOf: URL(fileURLWithPath: certificatePath)) {
                        p.identityData = certificateData

                        // Configure other IKEv2 VPN protocol settings as needed

                        manager.protocolConfiguration = p
                        manager.localizedDescription = "My VPN"
                        manager.isEnabled = true

                        manager.saveToPreferences { error in
                            if error != nil {
                                result("Error saving VPN preferences: \(error!.localizedDescription)")
                            } else {
                                manager.loadFromPreferences(completionHandler: { (error) in
                                    if ((error) != nil) {
                                        print("VPN Preferences error: 2")
                                    } else {
                                        result("VPN configuration completed successfully")
                                    }
                                })

                            }
                        }
                    } else {
                        result("Error reading the certificate file.")
                    }
                }
            }
        } else if call.method == "startVPN" {
            let manager = NEVPNManager.shared()
            print("Starting VPN connection...")
            do {
              try manager.connection.startVPNTunnel()
              result("VPN connection started successfully")
            } catch {
              result("Error starting VPN: \(error.localizedDescription)")
            }
          } else {
            result(FlutterMethodNotImplemented)
        }
    }
}
