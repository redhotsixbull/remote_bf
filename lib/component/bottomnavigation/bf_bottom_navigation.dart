import 'package:flutter/material.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_icon.dart';

typedef BottomIndexCallBack = Function(int);

class BFBottomNavigation extends StatefulWidget {
  const BFBottomNavigation({Key? key, required this.callBack})
      : super(key: key);

  final BottomIndexCallBack callBack;

  @override
  State<BFBottomNavigation> createState() => _BFBottomNavigationState();
}

class _BFBottomNavigationState extends State<BFBottomNavigation> {
  int currentIndex = 0;

  _naviItem() {
    var itemList = [
      BottomNavigationBarItem(
        label: "홈",
        icon: BFIcon.ic_home(color: BFColor.white.withOpacity(0.5)),
        activeIcon: BFIcon.ic_home(color: BFColor.white),
      ),
      BottomNavigationBarItem(
        label: "요약",
        icon: BFIcon.ic_tune(color: BFColor.white.withOpacity(0.5)),
        activeIcon: BFIcon.ic_tune(color: BFColor.white),
      ),
      BottomNavigationBarItem(
        label: "자세",
        icon: BFIcon.ic_option(color: BFColor.white.withOpacity(0.5)),
        activeIcon: BFIcon.ic_option(color: BFColor.white),
      ),
      BottomNavigationBarItem(
        label: "설정",
        icon: BFIcon.ic_setting(color: BFColor.white.withOpacity(0.5)),
        activeIcon: BFIcon.ic_setting(color: BFColor.white),
      ),
    ];

    return itemList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: BFColor.gray300,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: BFColor.gray200.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 10),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: BFColor.white.withOpacity(0.5),
            selectedItemColor: BFColor.white,
            backgroundColor: BFColor.gray200,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: currentIndex,
            showUnselectedLabels: true,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.callBack(index);
            },
            items: _naviItem(),
          ),
        ),
      ],
    );
  }
}
