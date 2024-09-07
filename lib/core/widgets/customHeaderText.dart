import 'package:flutter/cupertino.dart';

import '../utils/app_text_style.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style:CustomTextStyles.poppins400style20,);
  }
}
