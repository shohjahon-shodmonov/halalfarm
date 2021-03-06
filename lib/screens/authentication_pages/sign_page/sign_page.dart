import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.15,
            child:
                Image.asset('assets/icons/halal_header/halal_logo_bigger.png'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height * 0.15,
            child: const Text(
              "Chorva hayvonlarini onlayn boqish",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height * 0.15,
            child: const Text(
              "Xuddi “My Tom Cat” dagidek. Faqat haqiqiy hayvonlarni. Maqsad: musulmon aholini o’zi ishonadigan halol go’sht bilan ta’minlash",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Text(
                "Ro'yxatdan o'tish",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signUp');
              },
            ),
          ),
          TextButton(
            child: const Text(
              "Akkountga kirish",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/signIn');
            },
          ),
        ],
      ),
    );
  }
}
