import 'package:dalel/core/function/custom_troast.dart';
import 'package:dalel/featuers/home/cubit/home_cubit.dart';
import 'package:dalel/featuers/home/cubit/home_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/widgets/custom_list_view.dart';
import 'Souvenirs_list_view.dart';

class SouvenirsRowOptions extends StatelessWidget {
  SouvenirsRowOptions({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (BuildContext context, Object? state) {
        if (state is GetSouvenirsFailure) {
          ShowToast(state.errmsg);
        }
      },
      builder: (BuildContext context, state) {
        return CustomSouvenirsListView(dataList:context
            .read<HomeCubit>()
            .SouvenirsDetails ,
            routePath:"/souvenirsDetailsView");
      },
    );
  }
}


