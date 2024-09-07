import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/home_cubit.dart';
import 'home_sections/HestoricalCharactresSection.dart';
import 'home_sections/HistoricalSouvenirsSection.dart';
import 'home_sections/hestorical_perious.dart';
import 'home_sections/home_app_bar_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:15 ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child:HomeAppBarSection() ,),
            SliverToBoxAdapter(child:BlocProvider(create: (context)=>HomeCubit()..getHistoricalPeriods(),
              child:HomeHestoricalPerioudSection() ,)),
            SliverToBoxAdapter(child:BlocProvider(create: (context)=>HomeCubit()..getCharacterDetails(),
              child:HestoricalCharactresSection() ,)),

            SliverToBoxAdapter(child: BlocProvider(create: (context)=>HomeCubit()..getSouvenirs(),
              child:HistoricalSouvenirsSection(),)),
          ],
        ),
      ),

    );
  }
}







