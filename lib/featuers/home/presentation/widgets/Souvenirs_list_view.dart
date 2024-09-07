import 'package:dalel/featuers/home/data/models/souvenirs_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';

import '../views/home_sections/souvenirs_Data_list_item.dart';

class CustomSouvenirsListView extends StatelessWidget {
  const CustomSouvenirsListView({
    Key? key,
    required this.dataList,
    required this.routePath,
  }) : super(key: key);
  final List<SouvenirsModel> dataList;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
          clipBehavior: Clip.none,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SouvenirsDataListItem(
              model: dataList[index],
              routePath: "/souvenirsDetailsView",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 27,
            );
          },
          itemCount: dataList.length),
    );
  }
}
