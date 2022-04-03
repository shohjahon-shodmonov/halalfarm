import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/screens/authentication_pages/sms_valid/sms_valid_components/sms_valid_texts.dart';
import 'package:pinput/pinput.dart';

class SmsValidationScreen extends StatefulWidget {
  const SmsValidationScreen({Key? key}) : super(key: key);

  @override
  State<SmsValidationScreen> createState() => _SmsValidationScreenState();
}

class _SmsValidationScreenState extends State<SmsValidationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _pinputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SmsValidTexts(),
          Form(
            key: _formKey,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(vertical: getProportionScreenHeight(46)),
              child: Pinput(
                length: 4,
                pinAnimationType: PinAnimationType.slide,
                controller: _pinputController,
                //focusNode: focusNode,
                //defaultPinTheme: SmsValidatorThemes.defaultPinTheme,
                showCursor: true,
                //cursor: SmsValidatorThemes.cursor,
                //preFilledWidget: SmsValidatorThemes.preFilledWidget,
                errorText: "Kod xato kiritildi",
                errorTextStyle: const TextStyle(
                  color: Colors.grey,
                ),
                //errorPinTheme: SmsValidatorThemes.errorTheme,
                onCompleted: (v) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/membership', (route) => false);
                },
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Kodni qaytadan yuborish",
              style: TextStyle(
                color: ColorConstants.kBlueColor,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
