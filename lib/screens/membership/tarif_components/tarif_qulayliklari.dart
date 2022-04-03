import 'package:flutter/material.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/data/local/local_data.dart';

class TarifQulayliklari extends StatelessWidget {
  const TarifQulayliklari({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenHeight(216),
      width: getProportionScreenWidth(319),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage('assets/icons/circle-check.png'),
              ),
              SizedBox(
                height: getProportionScreenHeight(50),
                width: getProportionScreenWidth(283),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    Tarif.tarifQulayliklari[index],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: Tarif.tarifQulayliklari.length - 1,
      ),
    );
  }
}
