import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/data/local/local_data.dart';
import 'package:halolfarm/screens/membership/tarif_components/tarif_container.dart';
import 'package:halolfarm/screens/membership/tarif_components/tarif_header.dart';

class MembershipTarifs extends StatelessWidget {
  const MembershipTarifs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConstants.kGreyColor,
      body: Column(
        children: [
          const TarifHeader(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return TarifContainer.tarifContainer(context, index);
              },
              itemCount: Tarif.tariflar.length,
            ),
          ),
        ],
      ),
    );
  }
}
