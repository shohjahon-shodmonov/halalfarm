import 'package:flutter/material.dart';
import 'package:halolfarm/core/components/size_config.dart';

class HisobniToldirish extends StatelessWidget {
  const HisobniToldirish({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionScreenHeight(200),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionScreenWidth(20),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: getProportionScreenHeight(4),
              width: getProportionScreenWidth(70),
              margin: EdgeInsets.only(top: getProportionScreenHeight(5)),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const Text(
            "Hisobni to'ldirish",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: SizedBox(
              child: Image.asset("assets/images/tolov/apelsin_logo.png"),
            ),
            title: const Text(
              "Apelsin",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: SizedBox(
              child: Image.asset("assets/images/tolov/payme.png"),
            ),
            title: const Text(
              "Payme",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
