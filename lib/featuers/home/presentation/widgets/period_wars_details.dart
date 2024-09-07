import 'dart:ui';
import 'package:dalel/core/utils/app_images.dart';
import 'package:dalel/core/widgets/custom_data_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/models/data_model.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/widgets/customHeaderText.dart';

class PeriodWarsDetails extends StatelessWidget {
  const PeriodWarsDetails({Key? key, required this.warsList}) : super(key: key);
final List<DataModel>warsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      CustomHeaderText(text: AppStrings.ancientEgyptWars,),
      SizedBox(height: 16,),
      Stack(
        clipBehavior:Clip.none,
          children: [
        Positioned(
            top: -52,right: 16,
            child: SvgPicture.asset(Images.Cleopatra)),

        CustomDataListView(dataList: warsList, routePath: "")

      ],)
    ],
    );
  }
}
