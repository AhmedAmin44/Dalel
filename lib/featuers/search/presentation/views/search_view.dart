import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart%20%20';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text("Search Screen ",style: TextStyle(fontSize:40,color:AppColors.primaryColor,fontWeight: FontWeight.bold)),),
    );
  }
}