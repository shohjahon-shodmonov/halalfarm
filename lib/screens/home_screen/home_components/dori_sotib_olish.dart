import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class BuyDrug extends StatelessWidget {
  const BuyDrug({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: getProportionScreenHeight(54),
          // width: getProportionScreenWidth(375),
          decoration: const BoxDecoration(
            color: Color(0xffF2F1F7),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Dori xarid qilish",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(getProportionScreenWidth(90), 0, getProportionScreenWidth(10), 0),
                child: CircleAvatar(
                  backgroundColor: ColorConstants.textColorDark50,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.clear,
                      color: ColorConstants.textColorDark70,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionScreenHeight(503),
          // width: getProportionScreenWidth(375),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: getProportionScreenHeight(200),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/dorilar/dori.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: getProportionScreenWidth(10),
                    left: getProportionScreenWidth(15),
                    child: Opacity(
                      opacity: 0.5,
                      child: Container(
                        height: getProportionScreenHeight(60),
                        width: getProportionScreenWidth(235),
                        padding: EdgeInsets.all(getProportionScreenWidth(10)),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: getProportionScreenWidth(20)),
                              child: const Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mening balansim",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: ColorConstants.kPrimaryColor,
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "450 000",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " so'm",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(getProportionScreenWidth(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Furosemif (ukol)"),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "23 000",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstants.textColorDark100,
                                ),
                              ),
                              TextSpan(
                                text: " so'm",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstants.textColorDark70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Izoh",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.textColorDark70,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.textColorDark90,
                          ),
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionScreenHeight(56),
                      width: getProportionScreenWidth(335),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          
                        },
                        child: const Text("Sotib olish"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
