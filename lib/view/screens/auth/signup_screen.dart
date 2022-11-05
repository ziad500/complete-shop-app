import 'package:complete_shop_app/routes/routes.dart';
import 'package:complete_shop_app/utils/app_assets.dart';
import 'package:complete_shop_app/utils/app_strings.dart';
import 'package:complete_shop_app/utils/theme.dart';
import 'package:complete_shop_app/view/screens/auth/login_screen.dart';
import 'package:complete_shop_app/view/widgets/auth/auth_button.dart';
import 'package:complete_shop_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/under_container.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 24, top: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          TextUtils(
                            text: "SIGN",
                            textSize: 28,
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                            text: "UP",
                            textSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: _nameController,
                        validator: () {},
                        prefixIcon: Image.asset(AppAssets.userIcon),
                        hintText: AppStrings.userName,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: _emailController,
                        validator: () {},
                        prefixIcon: Image.asset(AppAssets.emailIcon),
                        hintText: AppStrings.email,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: _passwordController,
                        validator: () {},
                        prefixIcon: Image.asset(AppAssets.passwordIcon),
                        hintText: AppStrings.password,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const CheckWidget(),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthButton(
                        text: AppStrings.signUp,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          UnderContainer(
            text: AppStrings.alreadyHaveAccount,
            textButton: AppStrings.login,
            onPressed: () {
              Get.offNamed(Routes.loginScreen);
            },
          )
        ],
      ),
    );
  }
}
