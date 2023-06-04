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
  _naviItem() {
    var itemList = [
      BottomNavigationBarItem(
        label: "홈",
        icon: BFIcon.ic_home(),
      ),
      BottomNavigationBarItem(
        label: "요약",
        icon: BFIcon.ic_tune(),
      ),
      BottomNavigationBarItem(
        label: "자세",
        icon: BFIcon.ic_option(),
      ),
      BottomNavigationBarItem(
        label: "설정",
        icon: BFIcon.ic_setting(),
      ),
    ];

    return itemList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: BFColor.white,
        boxShadow: [
          BoxShadow(color: BFColor.gray300, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: BFColor.gray300,
        backgroundColor: BFColor.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: 0,
        showUnselectedLabels: true,
        onTap: (index) {},
        items: _naviItem(),
      ),
    );
  }
}
