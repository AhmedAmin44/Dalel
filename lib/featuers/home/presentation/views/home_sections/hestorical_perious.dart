import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_string.dart';
import '../../../../../core/widgets/customHeaderText.dart';
import '../../widgets/home_options.dart';

class HomeHestoricalPerioudSection extends StatelessWidget {
   HomeHestoricalPerioudSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      CustomHeaderText(text: AppStrings.historicalPeriods,),
      SizedBox(height: 16,),
      RowOptions(),
    ],);
  }
}
