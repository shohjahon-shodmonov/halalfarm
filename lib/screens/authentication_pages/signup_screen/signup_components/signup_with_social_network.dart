import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';

class SignUpWithSocialNetworkAccounts extends StatelessWidget {
  const SignUpWithSocialNetworkAccounts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.09,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: ColorConstants.kGreyColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/googleicon.png'),
                ),
                Text(
                  "Google",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: ColorConstants.kGreyColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/icons/appleicon.png'),
                      ),
                      Text(
                        "Apple",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: ColorConstants.kGreyColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/icons/facebookicon.png'),
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
