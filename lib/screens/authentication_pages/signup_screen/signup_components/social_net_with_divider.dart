import 'package:flutter/material.dart';

class SocialNetWithDivider extends StatelessWidget {
  const SocialNetWithDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 10,
          width: MediaQuery.of(context).size.width * 0.25,
          child: const Divider(
            thickness: 1.0,
          ),
        ),
        const Text(
          "Ijtimoiy tarmoqlar orqali",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 10,
          width: MediaQuery.of(context).size.width * 0.25,
          child: const Divider(
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
