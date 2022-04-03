import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class SmsValidTexts extends StatelessWidget {
  SmsValidTexts({
    Key? key,
  }) : super(key: key);

  String codeSentNumber = "+998 90 123 45 67";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenHeight(76),
      width: getProportionScreenWidth(343),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "SMS dagi kodni kiriting",
              style: TextStyle(
                  color: ColorConstants.textColorDark100, fontSize: 24),
            ),
          ),
          Text(
            "Kod ushbu raqamga yuborildi:",
            style: TextStyle(
              color: ColorConstants.textColorGreyDark,
              fontSize: 15,
            ),
          ),
          Text(
            codeSentNumber,
            style: TextStyle(
              color: ColorConstants.textColorGreyDark,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
