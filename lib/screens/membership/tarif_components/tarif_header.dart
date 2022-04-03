import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/widgets/halal_logo.dart';

class TarifHeader extends StatelessWidget {
  const TarifHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenHeight(222),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: HalalLogo(),
          ),
          Text(
            "A'zolik tariflari",
            style: TextStyle(
                color: ColorConstants.textColorDark100,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Qaysi tarif sizga ma'qulroq?",
              style: TextStyle(
                color: ColorConstants.textColorDark70,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
