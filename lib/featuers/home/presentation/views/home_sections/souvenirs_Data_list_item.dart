import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/featuers/home/data/models/souvenirs_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/function/navigation.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class SouvenirsDataListItem extends StatelessWidget {
  SouvenirsDataListItem({Key? key, required this.model, required this.routePath}) : super(key: key);
  final SouvenirsModel model;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigate(context,routePath,extra: model);
      },
      child:  Container(
        height: 150,
        width: 74,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: AppColors.grey, blurRadius: 10, offset: Offset(0, 9))
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 78,
              height: 96,
              child: CachedNetworkImage(
                imageUrl: model.image,
                placeholder: (context, url) =>
                    Shimmer.fromColors(
                      baseColor: AppColors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 96,
                        width: 78,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.grey),
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: 34,width: 66,
              child: Text(
                model.name,
                style: CustomTextStyles.poppins500style14.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
