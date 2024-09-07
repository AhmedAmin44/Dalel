import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_string.dart';
import '../../../../../core/widgets/customHeaderText.dart';
import '../../../../../core/widgets/custom_list_view.dart';
import '../../widgets/char_optional.dart';
import '../home_view.dart';

class HestoricalCharactresSection extends StatelessWidget {
  const HestoricalCharactresSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        CustomHeaderText(text: AppStrings.historicalCharacters,),
        SizedBox(height:16 ,),
        CharRowOptions(),
        SizedBox(height: 32,),
      ],
    );
  }
}
