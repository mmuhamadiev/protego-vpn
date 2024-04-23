// vpn_manager.dart

import 'package:flutter/services.dart';

class VPNManager {

  final MethodChannel _vpnChannel = const MethodChannel('flutter_protego_vpn');

  // Method to configure an IKEv2 VPN connection with EAP authentication.
  Future<void> configureVPN(String server, String username, String password, String certificatePath) async {
    try {
      final result = await _vpnChannel.invokeMethod('configureVPN', {
        'server': server,
        'username': username,
        'password': password,
        'certificatePath': certificatePath,
      });
      // Handle the result if needed
    } catch (e) {
      print('Error configuring VPN: $e');
    }
  }

  Future<void> startVPN() async {
    try {
      final result = await _vpnChannel.invokeMethod('startVPN');
      // Handle the result if needed
    } catch (e) {
      print('Error starting VPN: $e');
    }
  }


}
