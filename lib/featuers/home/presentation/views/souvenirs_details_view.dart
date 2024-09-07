import 'package:dalel/core/utils/app_images.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/featuers/home/data/models/characters_model.dart';
import 'package:dalel/featuers/home/data/models/souvenirs_model.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/home_cubit.dart';
import '../widgets/character_details_section.dart';
import '../widgets/period_section_details.dart';
import '../widgets/period_wars_details.dart';
import '../widgets/recommendation_section.dart';
import 'home_sections/HestoricalCharactresSection.dart';
import 'home_sections/home_app_bar_section.dart';

class SouvenirsDetailsView extends StatelessWidget {
  const SouvenirsDetailsView({Key? key, required this.model}) : super(key: key);
  final SouvenirsModel model;

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
                periodName: "${model.name}",
                discription: model.discription,
                imageUrl: model.image,
              ),
            ),
            // SliverToBoxAdapter(
            //   child:CharactersDetailsSection()
            // ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "Discover the joy of owning Souvenirs! This Item is not just a purchase; it's an investment in your happiness. Imagine the convenience, the style, the functionality it will bring to your life. Don't wait any longer to experience the satisfaction of owning this exceptional Souvenirs. Treat yourself today!",
                  style: CustomTextStyles.poppins400style20.copyWith(fontSize: 12),
                  maxLines: 9,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            SliverToBoxAdapter(
              child: BlocProvider(
                  create: (context) => HomeCubit()..getCharacterDetails(),
                  child: HestoricalCharactresSection()),
            ),
          ],
        ),
      ),
    );
  }
}
