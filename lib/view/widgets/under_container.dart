import 'package:complete_shop_app/utils/theme.dart';
import 'package:complete_shop_app/view/widgets/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UnderContainer extends StatelessWidget {
  const UnderContainer(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textButton});
  final String text;
  final String textButton;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(text: text, textSize: 20),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(text: textButton, textSize: 20),
          )
        ],
      ),
    );
  }
}
