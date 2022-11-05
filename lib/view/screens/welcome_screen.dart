import 'package:complete_shop_app/routes/routes.dart';
import 'package:complete_shop_app/utils/app_assets.dart';
import 'package:complete_shop_app/utils/app_strings.dart';
import 'package:complete_shop_app/utils/theme.dart';
import 'package:complete_shop_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              AppAssets.welcomeBackGround,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInQuart,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: value *
                                (MediaQuery.of(context).size.height * 0.35)),
                        child: child,
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: TextUtils(text: AppStrings.welcome)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextUtils(
                              text: AppStrings.appName1,
                              color: mainColor,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            TextUtils(
                              text: AppStrings.appName2,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15)),
                          onPressed: () {
                            Get.offNamed(Routes.loginScreen);
                          },
                          child: const TextUtils(
                            text: AppStrings.getStart,
                            textSize: 22,
                          )),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextUtils(
                        text: AppStrings.dontHaveAccount,
                        textSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.signupScreen);
                        },
                        child: const TextUtils(
                          text: AppStrings.signUp,
                          textSize: 18,
                          color: mainColor,
                          textDecoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
