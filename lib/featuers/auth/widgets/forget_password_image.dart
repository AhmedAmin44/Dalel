import 'package:flutter/cupertino.dart';

import '../../../core/utils/app_images.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(Images.forget_passs),
    );
  }
}
