import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/featuers/auth/widgets/welcome_text.dart';
import 'package:flutter/material.dart%20%20';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../widgets/custom_forgetPassword_form.dart';
import '../../widgets/forget_password_image.dart';
import '../../widgets/forget_password_subtitle.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height:108 ,),
          ),
          SliverToBoxAdapter(
            child:WelcomeWidget(text: AppStrings.forgotPassword),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height:40 ,),
          ),
          SliverToBoxAdapter(
            child: ForgetPasswordImage(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height:24 ,),
          ),
          SliverToBoxAdapter(
            child: ForgetPasswordSubTitle(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height:41 ,),
          ),

          SliverToBoxAdapter(
            child:CustomForgotPasswordForm() ,
          ),
          SliverToBoxAdapter(
            child: SizedBox(height:20 ,),
          ),


        ],
      ),
    );
  }
}

