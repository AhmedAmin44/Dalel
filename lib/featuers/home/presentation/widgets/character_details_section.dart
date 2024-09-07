import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/customHeaderText.dart';

class CharactersDetailsSection extends StatelessWidget {
  const CharactersDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(text: "About Saladin (1137-1193)"),
            SizedBox(
              width: 6,
            ),
            SvgPicture.asset(Images.nisr)
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
                    top: -24,
                    child: SvgPicture.asset(Images.point)),
                Container(
                    height: 196,
                    width: 220,
                    child: Text(
                    "Saladin was the founder of the Ayyubid dynasty and the first sultan of both Egypt and Syria. He is best known for his heroic defense of Islam against the Crusaders, especially his recapture of Jerusalem in 1187 ....Read more?",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.poppins500style14.copyWith(color: AppColors.black),
                    ))
              ],
            ),
            SizedBox(width: 16,),
            SizedBox(
              width: 140,height: 283,
              child: SvgPicture.asset(Images.sal,fit: BoxFit.fill,),)
          ],
        )
      ],
    );
  }
}
