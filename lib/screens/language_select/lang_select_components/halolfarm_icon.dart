import 'package:flutter/material.dart';

class HalolFarmIcon extends StatelessWidget {
  const HalolFarmIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.asset('assets/icons/halal_header/halol_logo_green.png'),
    );
  }
}