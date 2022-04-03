import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:pinput/pinput.dart';

class SmsValidationScreen extends StatelessWidget {
  const SmsValidationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SMS dagi kodni kiriting",
            style:
                TextStyle(color: ColorConstants.textColorDark100, fontSize: 24),
          ),
          Text(
            "Kod ushbu raqamga yuborildi:+998 90 123 45 67",
            style: TextStyle(
              color: ColorConstants.textColorGreyDark,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
