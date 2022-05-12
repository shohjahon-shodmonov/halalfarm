import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/screens/home_screen/home_components/dori_sotib_olish.dart';

class AlertForDrug extends StatelessWidget {
  const AlertForDrug({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.warning_amber_sharp,
              color: Colors.red,
            ),
            SizedBox(
              width: getProportionScreenWidth(10),
            ),
            Expanded(
              child: Text(
                "Qo'ylar orasida oq mushak kasalligi tarqalayapti",
                style: TextStyle(
                    color: Colors.red, fontSize: 17),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        Container(
          height: getProportionScreenHeight(46),
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: getProportionScreenHeight(10)),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const BuyDrug());
            },
            child: Text(
              "Dori sotib olish",
              style: TextStyle(
                color: ColorConstants.textColorDark90,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: ColorConstants.textColorDark90),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
