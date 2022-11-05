import 'package:complete_shop_app/utils/theme.dart';
import 'package:complete_shop_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: mainColor, minimumSize: const Size(3530, 50)),
      child: TextUtils(
        text: text,
        color: Colors.white,
        textSize: 18,
      ),
    );
  }
}
