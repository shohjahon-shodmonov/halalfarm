import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/data/local/local_data.dart';
import 'package:halolfarm/screens/membership/tarif_components/tarif_qulayliklari.dart';

class TarifContainer {
  static Container tarifContainer(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(getProportionScreenWidth(20)),
      margin: EdgeInsets.all(getProportionScreenHeight(8)),
      height: getProportionScreenHeight(455),
      width: getProportionScreenWidth(359),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Tarif.tariflar[index]['turi'],
            style: const TextStyle(
              color: ColorConstants.textColorPurpleInTarifs,
              fontSize: 20,
            ),
          ),
          Text(
            Tarif.tariflar[index]['narx'],
            style: const TextStyle(
              color: ColorConstants.textColorDarkInTarifCost,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            Tarif.tariflar[index]['moslik'],
            style: const TextStyle(
              color: ColorConstants.textColorDark80,
              fontSize: 16,
            ),
          ),
          const TarifQulayliklari(),
          SizedBox(
            height: getProportionScreenHeight(56),
            width: getProportionScreenWidth(319),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                primary: Colors.white,
                side: const BorderSide(
                  color: ColorConstants.textColorDark80,
                ),
              ),
              child: const Text(
                "Tanlash",
                style: TextStyle(
                  color: ColorConstants.textColorDark100,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/initial');
              },
            ),
          ),
        ],
      ),
    );
  }
}
