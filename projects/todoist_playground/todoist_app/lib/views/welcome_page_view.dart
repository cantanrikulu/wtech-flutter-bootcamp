import 'package:flutter/material.dart';
import 'package:todoist_app/views/auth/sign_up_page_view.dart';
import 'package:todoist_app/widgets/button_widgets/welcome_button.dart';
import '../constants/image/image_path_constants.dart';
import '../constants/text/auth_constants.dart';
import 'auth/login_with_email_view.dart';

class WelcomeToApp extends StatefulWidget {
  const WelcomeToApp({Key? key}) : super(key: key);

  @override
  State<WelcomeToApp> createState() => _WelcomeToAppState();
}

class _WelcomeToAppState extends State<WelcomeToApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(width: 40, height: 40, child: Image.asset(CustomImagePathConstants.appIconPath)),
                    Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          CustomTextConstants.welcomeText,
                          style: Theme.of(context).textTheme.headline1,
                        ))
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.asset(CustomImagePathConstants.welcomeIconPath, height: 250),
                      ),
                      const CustomButtonWelcome(
                          color: Colors.red,
                          icon: Icons.email_rounded,
                          widName: LoginWithEmail(),
                          text: CustomTextConstants.buttonTextEmail),
                      const CustomButtonWelcome(
                        color: Colors.black,
                        icon: Icons.apple_rounded,
                        widName: SignInView(),
                        text: CustomTextConstants.buttonTextApple,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CustomSizedBox(imagePath: CustomImagePathConstants.googleIconPath),
                          CustomSizedBox(imagePath: CustomImagePathConstants.facbookIconPath)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, left: 30, right: 30),
                        child: Text(CustomTextConstants.agreeText,
                            style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: OutlinedButton(
          onPressed: () {},
          child: Center(
              child: Image.asset(
            imagePath,
            width: 20,
          ))),
    );
  }
}