import 'package:flutter/cupertino.dart';

import '../../featuers/home/presentation/views/home_sections/CustomDataListViewItems.dart';
import '../models/data_model.dart';

class CustomDataListView extends StatelessWidget {
  const CustomDataListView({
    super.key, required this.dataList, required this.routePath,
  });
  final List<DataModel>dataList;
  final String routePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 96,
        child: ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomDataListViewItems(
              model: dataList[index], routePath:"/historicalPeriodsDetails",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount:dataList
              .length,
        ));
  }
}
