import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/home/home_mobile.dart';
import 'package:facebook_clone/screens/other/responsive.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> with TickerProviderStateMixin {
  final List<Widget> _screens = [
    const HomeMobile(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];
  int _selectedIndex = 0;
  late TabController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController =
        TabController(initialIndex: 0, length: _screens.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: TabBarView(
            children: _screens,
          ),
          bottomNavigationBar: !Responsive.isDesktop(context)
              ? Container(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: CustomTabBar(
                    icons: _icons,
                    selectedIndex: _selectedIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                      // pageController.jumpToPage(index);
                    },
                  ),
                )
              : const SizedBox.shrink(),
        ));
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar(
      {Key? key,
      required this.icons,
      required this.selectedIndex,
      required this.onTap})
      : super(key: key);
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.black45,
      labelColor: Palette.facebookBlue,
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.facebookBlue, width: 3.0),
        ),
      ),
      tabs: icons
          .map((e) => Tab(
                icon: Icon(
                  e,
                  size: 30.0,
                ),
              ))
          .toList(),
      onTap: onTap,
    );
  }
}
