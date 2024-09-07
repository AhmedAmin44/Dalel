import 'package:dalel/core/function/custom_troast.dart';
import 'package:dalel/featuers/home/cubit/home_cubit.dart';
import 'package:dalel/featuers/home/cubit/home_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/widgets/custom_list_view.dart';

class CharRowOptions extends StatelessWidget {
  CharRowOptions({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (BuildContext context, Object? state) {
        if (state is GetCharacterFailure) {
          ShowToast(state.errmsg);
        }
      },
      builder: (BuildContext context, state) {
        return CustomCategoriesListView(dataList:context
            .read<HomeCubit>()
            .characterDetails ,
            routePath:"");
      },
    );
  }
}


