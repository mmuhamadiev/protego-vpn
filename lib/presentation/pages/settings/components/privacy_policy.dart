import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});
  Future<void>_launchURL(String url) async{
    final Uri uri=Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                GestureDetector(child: const  Icon(Icons.arrow_back_ios_new,size: 28,),onTap:(){ Navigator.pop(context);},),
                SizedBox(width: 20.w,),
                  Text(
                    "Privacy Policy",
                    style: AppTextStyles.body35w5.copyWith(color: AppColors.black),
                  ),
                ],
              ),
              
              SizedBox(
                height: 60.h,
              ),
              RichText(
                  text: TextSpan(
                style: AppTextStyles.body13w5.copyWith(color: AppColors.black),
                children: [
                  TextSpan(
                      text: "Protego Vpn Privacy Policy\n",
                      style: AppTextStyles.body24w5
                          .copyWith(color: AppColors.black)),
                  const TextSpan(
                    text:
                        """Muhamaitijiang Muhamaijiyefu built the Protego Vpn app as an Ad Supported app. This SERVICE is provided by Muhamaitijiang Muhamaijiyefu at no cost and is intended for use as is.
       
This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.

If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.

The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Protego Vpn unless otherwise defined in this Privacy Policy.
""",
                  ),
                  TextSpan(
                      text: "Information Collection and Use\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black)),
                  TextSpan(
                      text:
                          """For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.

The app does use third-party services that may collect information used to identify you.

Link to the privacy policy of third-party service providers used by the app\n""")
                ],
              )),
              GestureDetector(
                 onTap: () async{
                 await _launchURL("https://policies.google.com/privacy");
                  debugPrint("bb");
                 },
                child: Text("   . Google Play Services\n",

                    textAlign: TextAlign.right,
                    style: AppTextStyles.body13w7
                        .copyWith(color: AppColors.blue)),
              ),
              GestureDetector(
                onTap: (){
                  _launchURL("support.google.com");
                },
                child: Text("   . AdMob\n",
                    textAlign: TextAlign.right,
                    style: AppTextStyles.body13w7
                        .copyWith(color: AppColors.blue)),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        style: AppTextStyles.body13w7
                            .copyWith(color: AppColors.black),
                        text: "Log Data\n"),
                    const TextSpan(
                        text:
                            "I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.\n"),
                    TextSpan(
                      text: "Cookies\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
                    TextSpan(
                      text:
                          """Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.

This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\n""",
                    ),
                    TextSpan(
                      text: "Service Providers\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
                    TextSpan(
                        text:
                            """I may employ third-party companies and individuals due to the following reasons:

  .  To facilitate our Service;
  .  To provide the Service on our behalf;
  .  To perform Service-related services; or
  .  To assist us in analyzing how our Service is used.
I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\n"""),
                    TextSpan(
                      text: "Security\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
                    TextSpan(
                        text:
                            """I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.\n"""),
                    TextSpan(
                      text: "Links to Other Sites\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
              const      TextSpan(
                        text:
                            """This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\n"""),
                    TextSpan(
                        text: "Children's Privacy\n",
                        style: AppTextStyles.body13w7
                            .copyWith(color: AppColors.black)),
                  const  TextSpan(
                        text:
                            "These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.\n"),
                    TextSpan(
                      text: "Changes to This Privacy Policy\n",
                      
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
                    const TextSpan(
                        text:
                            """I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.

This policy is effective as of 2023-11-01\n"""),
                    TextSpan(
                      text: "Contact Us\n",
                      style: AppTextStyles.body13w7
                          .copyWith(color: AppColors.black),
                    ),
                    TextSpan(

                        text:
                            "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at mmuhamadjon@gmail.com.\n"),

                          
                  ],
                  style:
                      AppTextStyles.body13w5.copyWith(color: AppColors.black),
                ),
              ),
             
            ],
          ),
        ),
      )),
    );
  }
}
