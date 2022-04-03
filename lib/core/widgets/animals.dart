import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/data/local/local_data.dart';

class Animals extends StatelessWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: getProportionScreenHeight(16),
        crossAxisSpacing: getProportionScreenWidth(15),
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Container(
          height: getProportionScreenHeight(206),
          width: getProportionScreenWidth(172),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionScreenHeight(134),
                width: getProportionScreenWidth(172),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    Hayvonlar.hayvonlarHaqida[index]['rasmi'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${Hayvonlar.hayvonlarHaqida[index]['nomi']}   ${Hayvonlar.hayvonlarHaqida[index]['yoshi']}",
                  style: TextStyle(
                    color: ColorConstants.textColorDark80,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      Hayvonlar.hayvonlarHaqida[index]['narxi'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "so'm",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: Hayvonlar.hayvonlarHaqida.length,
    );
  }
}
