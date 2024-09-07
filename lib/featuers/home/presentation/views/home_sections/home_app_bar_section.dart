import 'package:flutter/cupertino.dart';

import '../../widgets/home_app_bar.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40,),
        CustomHomeAppBar(),
        SizedBox(height: 32,),
      ],
    );
  }
}
