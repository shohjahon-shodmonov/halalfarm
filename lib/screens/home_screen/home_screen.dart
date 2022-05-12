import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/screens/home_screen/home_components/ogohlantirish.dart';
import 'package:halolfarm/screens/home_screen/home_components/user_balance.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final bool haveBugdoy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: CustomScrollView(
        slivers: [
          const UserBalancePart(),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: getProportionScreenHeight(30),
                horizontal: getProportionScreenWidth(20),
              ),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.elliptical(40, 40)),
                color: Color(0xffF2F1F7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mening hayvonlarim(2)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.textColorDark90,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/my_animal"),
                    child: Container(
                      width: getProportionScreenWidth(359),
                      padding: EdgeInsets.all(getProportionScreenHeight(20)),
                      margin: EdgeInsets.symmetric(
                        vertical: getProportionScreenHeight(4),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. Hisori qo'y (N365)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.textColorDark90,
                            ),
                          ),
                          Container(
                            height: getProportionScreenHeight(194),
                            width: getProportionScreenWidth(319),
                            margin: EdgeInsets.symmetric(
                                vertical: getProportionScreenHeight(15)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/hayvonlar/hisor_qoy.png",
                                ),
                              ),
                            ),
                          ),
                          const AlertForDrug(),
                          SizedBox(
                            height: getProportionScreenHeight(100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                              getProportionScreenHeight(12)),
                                      child: Text(
                                        "Yetilish ko'rsatkichi",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: ColorConstants
                                                .textColorDark100),
                                      ),
                                    ),
                                    Text(
                                      "Taxminiy yetilish sanasi",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.textColorDark60),
                                    ),
                                    Text(
                                      "22-aprel, 2022-yil",
                                      style: TextStyle(
                                          color:
                                              ColorConstants.textColorDark60),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "100%",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              ColorConstants.textColorDark100),
                                    ),
                                    Container(
                                      height: getProportionScreenHeight(100),
                                      width: getProportionScreenWidth(74),
                                      margin: EdgeInsets.only(
                                          left: getProportionScreenWidth(10)),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.green,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            leading: Stack(
                              clipBehavior: Clip.antiAlias,
                              children: [
                                CircleAvatar(
                                  radius: getProportionScreenHeight(23),
                                  backgroundImage: const AssetImage(
                                      "assets/images/yemlar/arpa.png"),
                                ),
                                haveBugdoy
                                    ? Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: InkWell(
                                          onTap: () {},
                                          child: CircleAvatar(
                                            radius:
                                                getProportionScreenHeight(10),
                                            backgroundColor: Colors.red,
                                            child: Icon(
                                              Icons.add,
                                              size:
                                                  getProportionScreenHeight(14),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(
                                        height: 0,
                                      ),
                              ],
                            ),
                            title: const Text("Bug'doy (58%)"),
                            subtitle: Container(
                              height: getProportionScreenHeight(5),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            leading: Stack(
                              clipBehavior: Clip.antiAlias,
                              children: [
                                CircleAvatar(
                                  radius: getProportionScreenHeight(23),
                                  backgroundImage: const AssetImage(
                                      "assets/images/yemlar/arpa.png"),
                                ),
                                !haveBugdoy
                                    ? Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: InkWell(
                                          onTap: () {},
                                          child: CircleAvatar(
                                            radius:
                                                getProportionScreenHeight(10),
                                            backgroundColor: Colors.red,
                                            child: Icon(
                                              Icons.add,
                                              size:
                                                  getProportionScreenHeight(14),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(
                                        height: 0,
                                      ),
                              ],
                            ),
                            title: const Text("Bug'doy (58%)"),
                            subtitle: Container(
                              height: getProportionScreenHeight(5),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getProportionScreenHeight(56),
                    width: getProportionScreenWidth(359),
                    margin: EdgeInsets.symmetric(
                        vertical: getProportionScreenHeight(10)),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: ColorConstants.textColorDark90,
                      ),
                      label: Text(
                        "Yangi hayvon sotib olish",
                        style: TextStyle(
                            color: ColorConstants.textColorDark90,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: ColorConstants.textColorDark90))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
