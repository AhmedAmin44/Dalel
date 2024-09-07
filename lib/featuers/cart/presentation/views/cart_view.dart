import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart%20%20';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text("Cart Screen ",style: TextStyle(fontSize:40,color:AppColors.primaryColor,fontWeight: FontWeight.bold)),),
    );
  }
}