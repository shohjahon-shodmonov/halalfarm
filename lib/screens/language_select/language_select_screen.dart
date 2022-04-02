import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/screens/language_select/lang_select_components/halolfarm_icon.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({Key? key}) : super(key: key);

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          const HalolFarmIcon(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: const [
                Text(
                  "Tilni tanlang",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Dasturni qaysi tilda ishlatishni xohlaysiz?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.langSelectBgColor,
              ),
              child: ListView.separated(
                padding: const EdgeInsets.all(10.0),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(Constants.languageList[index]['flag']),
                    ),
                    title: Text(
                      Constants.languageList[index]['language'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: Constants.languageList.length,
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            width: getProportionScreenWidth(343),
            height: getProportionScreenHeight(56),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstants.kPrimaryColor),
              child: const Text("Keyingisi"),
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
