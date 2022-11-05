import 'package:complete_shop_app/utils/app_assets.dart';
import 'package:complete_shop_app/view/widgets/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckWidget extends StatefulWidget {
  const CheckWidget({super.key});

  @override
  State<CheckWidget> createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {
  bool suppmit = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              suppmit = !suppmit;
            });
          },
          child: !suppmit
              ? Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              : Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(AppAssets.checkIcon),
                ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: const [
            TextUtils(
              text: 'I accept ',
              textSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            TextUtils(
              text: 'terms & conditions',
              textSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              textDecoration: TextDecoration.underline,
            ),
          ],
        )
      ],
    );
  }
}
