import 'package:flutter/cupertino.dart';
import 'package:flutter_tech_assignment/consts/consts.dart';
import 'package:flutter_tech_assignment/screens/login_screen/widgets/custom_logo_container.dart';
import 'package:flutter_tech_assignment/screens/login_screen/widgets/form_section.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(gradient: bgGradient),
        padding: const EdgeInsets.symmetric(horizontal: appHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //logo container
            customLogoContainer(context),
            //welcome flutter text
            const Text(
              welcomeText,
              style: TextStyle(
                  fontSize: largeText,
                  color: black,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              continueText,
              style: TextStyle(
                  fontSize: mediumText,
                  color: grey,
                  fontWeight: FontWeight.w400),
            ),
            //form section
            formSection(context, formKey),
            // formSection(context, formKey)
          ],
        ),
      ),
    );
  }
}
