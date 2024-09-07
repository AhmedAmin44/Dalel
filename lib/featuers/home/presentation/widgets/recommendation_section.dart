import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_string.dart';
import '../../../../core/widgets/customHeaderText.dart';
import '../../cubit/home_cubit.dart';
import 'Souvenirs_list_view.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      CustomHeaderText(text: AppStrings.recommendations,),
    SizedBox(height: 16,),

    ]
    ,
    );;
  }
}
