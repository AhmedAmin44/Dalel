import 'package:dalel/core/function/custom_troast.dart';
import 'package:dalel/featuers/home/cubit/home_cubit.dart';
import 'package:dalel/featuers/home/cubit/home_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/widgets/custom_data_list_view.dart';
import '../../../../core/widgets/shimmer_widget.dart';

class RowOptions extends StatelessWidget {
  RowOptions({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(

      listener: (BuildContext context, Object? state) {
        if (state is GetHistoricalPeriodsFailure) {
          ShowToast(state.errmsg);
        }
      },
      builder: (BuildContext context, state) {
        return state is GetHistoricalPeriodsLoading
            ? CustomShimmerCategory()
            : CustomDataListView(dataList:context
            .read<HomeCubit>()
            .historicalPeriod ,
        routePath:"/historicalPeriodsDetails");
      },
    );
  }
}


