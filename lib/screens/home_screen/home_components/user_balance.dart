import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class UserBalancePart extends StatelessWidget {
  const UserBalancePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorConstants.kPrimaryColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionScreenHeight(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: getProportionScreenHeight(60),
                width: getProportionScreenWidth(120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: getProportionScreenHeight(35),
                      width: getProportionScreenWidth(35.6),
                      child: Image.asset('assets/images/logo/yellow_logo.png'),
                    ),
                    Text(
                      "HALAL \nFARM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Balansingiz",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 14,
                      child: CircleAvatar(
                        radius: 12,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        backgroundColor: ColorConstants.kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionScreenWidth(16),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "450 000",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "so'm",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Hisobni to'ldirish uchun ID: 255 435 345",
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConstants.kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      expandedHeight: getProportionScreenHeight(250),
    );
  }
}
