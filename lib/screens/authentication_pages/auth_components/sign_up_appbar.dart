import 'package:flutter/material.dart';

class SignUpAppBar extends StatelessWidget {
  const SignUpAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(primary: Colors.blue),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Image.asset('assets/icons/back_vector.png'),
              const SizedBox(width: 5),
              Text(
                "Ortga",
                style: TextStyle(
                  color: Color(0xFF007AFF),
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 45),
        Text(
          "Ro'yxatdan o'tish",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
