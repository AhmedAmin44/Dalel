import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

class CustomShimmerCategory extends StatelessWidget {
  const CustomShimmerCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width:164.0,
            height:96.0,
            child: Shimmer.fromColors(
                baseColor: AppColors.grey,
                highlightColor: Colors.white,
                child:Container(
                  height: 100,width:100 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: AppColors.grey),
                )
            ),
          ),
          SizedBox(width: 16,),
          SizedBox(
            width:164.0,
            height:96.0,
            child: Shimmer.fromColors(
                baseColor: AppColors.grey,
                highlightColor: Colors.white,
                child:Container(
                  height: 100,width:100 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: AppColors.grey),
                )
            ),
          ),
        ],

    );
  }
}
