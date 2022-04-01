import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/screens/authentication_pages/signup_screen/signup_components/input_decoration.dart';
import 'package:halolfarm/screens/authentication_pages/auth_components/sign_up_appbar.dart';
import 'package:halolfarm/screens/authentication_pages/signup_screen/signup_components/signup_with_social_network.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 40),
          SignUpAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: MyInputDecor.myTextFormField(
                          "To'liq ism familiyangiz"),
                      keyboardType: TextInputType.name,
                    ),
                    TextFormField(
                      controller: _dateController,
                      decoration:
                          MyInputDecor.myTextFormField("Tug'ilgan sanangiz"),
                      keyboardType: TextInputType.datetime,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration:
                          MyInputDecor.myTextFormField("Telefon raqamingiz"),
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
              Text(
                "Ijtimoiy tarmoqlar orqali",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SignUpWithSocialNetworkAccounts(),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: _nameController.text == null
                        ? ColorConstants.kDisabledColor
                        : ColorConstants.kPrimaryColor),
                child: Text("Keyingisi"),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
