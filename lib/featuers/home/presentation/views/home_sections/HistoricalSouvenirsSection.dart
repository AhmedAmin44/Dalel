import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_string.dart';
import '../../../../../core/widgets/customHeaderText.dart';
import '../../../../../core/widgets/custom_list_view.dart';
import '../../widgets/souvenirs_options.dart';
import '../home_view.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32,),
        CustomHeaderText(text: AppStrings.historicalSouvenirs,),
        SizedBox(height:16 ,),
        SouvenirsRowOptions(),
        SizedBox(height: 32,),
      ],
    );
  }
}
