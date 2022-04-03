import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class NotHaveAnimals extends StatelessWidget {
  const NotHaveAnimals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: getProportionScreenHeight(77),
            width: getProportionScreenWidth(375),
            color: ColorConstants.bgColorLightGrey,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Mening hayvonlarim",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                height: getProportionScreenHeight(380),
                width: getProportionScreenWidth(343),
                child: Column(
                  children: [
                    Image.asset('assets/images/doc1.png'),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "Hali hayvonlaringiz yo'q",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.textColorDark100,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: getProportionScreenHeight(44),
                      width: getProportionScreenWidth(272),
                      child: Text(
                        "O’zingiz istagan hayvonni sotib olishingiz mumkin",
                        style: TextStyle(
                          color: ColorConstants.textColorDark60,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 58.0),
                      child: Container(
                        height: getProportionScreenHeight(56),
                        width: getProportionScreenWidth(343),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstants.kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            "+  Hayvon sotib olish",
                            style: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
