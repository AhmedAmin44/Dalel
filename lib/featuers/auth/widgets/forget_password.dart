import 'package:dalel/core/function/navigation.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/utils/app_string.dart';
import '../../../core/utils/app_text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigateReplacement(context, "/forgetPassword");
      },
      child: Align(alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyles.poppins600style28.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
