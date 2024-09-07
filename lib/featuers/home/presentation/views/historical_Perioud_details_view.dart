import 'package:dalel/featuers/home/data/models/historical_period_model.dart';
import 'package:dalel/featuers/home/presentation/views/home_sections/home_app_bar_section.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/home_cubit.dart';
import '../widgets/period_section_details.dart';
import '../widgets/period_wars_details.dart';
import '../widgets/recommendation_section.dart';
import 'home_sections/HistoricalSouvenirsSection.dart';

class HistoricalPeriodsDetailsView extends StatelessWidget {
  const HistoricalPeriodsDetailsView({Key? key, required this.model})
      : super(key: key);
  final HistoricalPeriodModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeAppBarSection(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 7,
              ),
            ),
            SliverToBoxAdapter(
              child: PeriodSectionDetails(
                periodName: model.name,
                discription: model.discription,
                imageUrl:model.image,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            SliverToBoxAdapter(
              child: PeriodWarsDetails(warsList: model.wars,),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            SliverToBoxAdapter(
              child:BlocProvider(create: (context)=>HomeCubit()..getSouvenirs(),
                child:HistoricalSouvenirsSection(),),
            ),
          ],
        ),
      ),
    );
  }
}
