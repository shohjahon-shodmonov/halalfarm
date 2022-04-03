import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: getProportionScreenHeight(70),
      width: getProportionScreenWidth(375),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: getProportionScreenHeight(36),
            width: getProportionScreenWidth(303),
            color: ColorConstants.bgColorSearchField,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: "Qidirish",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/nav_bar/filter.svg'),
          ),
        ],
      ),
    );
  }
}
