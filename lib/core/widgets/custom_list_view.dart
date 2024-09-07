import 'package:dalel/featuers/home/data/models/characters_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';

import '../../featuers/home/presentation/views/home_sections/charDataListItem.dart';

class CustomCategoriesListView extends StatelessWidget {
  const CustomCategoriesListView(
      {Key? key, required this.dataList, required this.routePath, })
      : super(key: key);
  final List<CharacterDetailsModel> dataList;
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
            return characterDataListItem(model:dataList[index], routePath:"/charactersDetailsView",);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 27,
            );
          },
          itemCount: dataList
              .length),
    );
  }
}

