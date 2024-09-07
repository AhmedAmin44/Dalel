import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/function/navigation.dart';
import '../../../../../core/models/data_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class CustomDataListViewItems extends StatelessWidget {
  CustomDataListViewItems({Key? key, required this.model, required this.routePath}) : super(key: key);
  final DataModel model;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigate(context,routePath,extra: model);
      },
      child: Container(
        height: 96,
        width: 174,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey, blurRadius: 10, offset: Offset(0, 7))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 15,
            ),
            SizedBox(
                height: 48,
                width: 62,
                child: Text(
                  model.name,
                  style: CustomTextStyles.poppins500style18
                      .copyWith(fontSize: 16, color: AppColors.deepBrown),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )),
            Container(
              width: 47,
              height: 64,
              child: CachedNetworkImage(
                imageUrl: model.image,
                placeholder: (context, url) =>
                    Shimmer.fromColors(
                      baseColor: AppColors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 67,
                        width: 47,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.grey),
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
      ),
    );
  }
}
