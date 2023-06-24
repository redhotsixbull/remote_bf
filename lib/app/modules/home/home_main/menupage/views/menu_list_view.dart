import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/vo/massagedata/category.dart';
import 'package:remote_bf/res/bf_color.dart';

import 'widget/mssage_list_tile.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({Key? key, required this.massageCategory})
      : super(key: key);
  final MassageCategory massageCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BFColor.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:
                    List.generate(massageCategory.massageList.length, (index) {
                  return MassageListTile(
                    massage: massageCategory.massageList[index],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
