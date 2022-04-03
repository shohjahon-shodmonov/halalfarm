import 'package:flutter/material.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/data/local/local_data.dart';

class Farms extends StatelessWidget {
  const Farms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              height: getProportionScreenHeight(334),
              width: getProportionScreenWidth(359),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(Fermalar.fermalarHaqida[index]['rasmi']),
            ),
            Positioned(
              bottom: 80,
              left: 40,
              child: Text(
                Fermalar.fermalarHaqida[index]['nomi'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 40,
              child: Text(
                Fermalar.fermalarHaqida[index]['joylashuv'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        );
      },
      itemCount: Fermalar.fermalarHaqida.length,
    );
  }
}
