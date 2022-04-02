import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  List<String> onBoardingTexts = [
    "Sevimli hayvoningizni onlayn sotib oling",
    "Ularni onlayn nazorat ostida fermada boqing",
    "Hayvoningizni istalgan paytda yetkazib beramiz"
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getProportionScreenHeight(500),
            child: PageView.builder(
                itemCount: 3,
                onPageChanged: (i) {
                  _tabController.animateTo(i);
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getProportionScreenHeight(400),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: index == 2
                              ? const BorderRadius.only(
                                  bottomRight: Radius.circular(45))
                              : BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(index == 1 ? 0 : 45)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/onboardings/onboarding$index.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionScreenHeight(68),
                        width: getProportionScreenWidth(343),
                        child: Text(
                          onBoardingTexts[index],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  );
                })),
          ),
          TabPageSelector(
            controller: _tabController,
            color: Colors.white,
            indicatorSize: 8,
            selectedColor: ColorConstants.kPrimaryColor,
          ),
          SizedBox(height: 20),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstants.kPrimaryColor),
              child: Text("Keyingisi"),
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn);
                _pageController.page == 2
                    ? Navigator.pushNamedAndRemoveUntil(
                        context, "/sign", (route) => false)
                    : null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
