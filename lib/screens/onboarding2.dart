import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/onboarding2.png'),
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Text(
                "Ularni onlayn nazorat ostida fermada boqing",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Constants.kPrimaryColor),
              child: Text("Keyingisi"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
