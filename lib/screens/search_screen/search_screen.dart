import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/core/widgets/animals.dart';
import 'package:halolfarm/core/widgets/farms.dart';
import 'package:halolfarm/screens/search_screen/search_components/search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConstants.bgColorLightGrey,
      body: Column(
        children: [
          MySearchBar(),
          Container(
            height: getProportionScreenHeight(52),
            width: getProportionScreenWidth(375),
            child: TabBar(
              controller: _tabController,
              indicatorColor: ColorConstants.textColorDark90,
              tabs: [
                Text(
                  "Hayvonlar (115)",
                  style: TextStyle(
                    color: _tabController!.index == 0
                        ? ColorConstants.textColorDark90
                        : ColorConstants.textColorDark50,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Fermalar (12)",
                  style: TextStyle(
                    color: _tabController!.index == 1
                        ? ColorConstants.textColorDark90
                        : ColorConstants.textColorDark50,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              onTap: (v) {
                setState(() {
                  _tabController!.animateTo(v);
                });
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (v) {
                setState(() {
                  _tabController!.animateTo(v);
                });
              },
              children: [
                Animals(),
                Farms(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
