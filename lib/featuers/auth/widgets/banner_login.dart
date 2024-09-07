import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/app_text_style.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: 270,
      width: 375,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(AppStrings.appName ,style: CustomTextStyles.saira700style32,),

          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Images.pyramids),

              SvgPicture.asset(Images.build),

            ],)
        ],
      ),
    );
  }
}
