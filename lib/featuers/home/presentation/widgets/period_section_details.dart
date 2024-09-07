import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_images.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/core/widgets/customHeaderText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_text_style.dart';

class PeriodSectionDetails extends StatelessWidget {
  const PeriodSectionDetails(
      {Key? key, required this.periodName, required this.discription, required this.imageUrl})
      : super(key: key);
  final String periodName;
  final String discription;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(text: "${AppStrings.about}${periodName}"),
            SizedBox(
              width: 6,
            ),
            SvgPicture.asset(Images.details1)
          ],
        ),
        SizedBox(
          height: 47,
        ),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: -80,
                    child: SvgPicture.asset(Images.pyramid)),
                Container(
                    height: 196,
                    width: 220,
                    child: Text(
                      discription,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.poppins500style14.copyWith(color: AppColors.black,fontSize: 15),
                    ))
              ],
            ),
            SizedBox(width: 16,),
            SizedBox(
              width: 131,height: 203,
              child: CachedNetworkImage(imageUrl:imageUrl ,fit: BoxFit.contain,),)
          ],
        )
      ],
    );
  }
}
