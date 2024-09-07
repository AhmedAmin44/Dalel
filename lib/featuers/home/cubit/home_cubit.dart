import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/featuers/home/data/models/characters_model.dart';
import 'package:dalel/featuers/home/data/models/wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/historical_period_model.dart';
import '../data/models/souvenirs_model.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<HistoricalPeriodModel> historicalPeriod = [];
  List<CharacterDetailsModel> characterDetails = [];
  List<SouvenirsModel> SouvenirsDetails = [];
  List<WarsModel> warsList = [];
  List<WarsModel> charWarsList = [];

// Historical Perioud Data
  getHistoricalPeriods() async {
    try {
      emit(GetHistoricalPeriodsLoading());
      await FirebaseFirestore.instance
          .collection('historical_period')
          .get()
          .then((value) => value.docs.forEach((element) async {
                await getWarsData(element);
                historicalPeriod.add(
                    HistoricalPeriodModel.fromJson(element.data(), warsList));
                emit(GetHistoricalPeriodsSucces());
              }));
    } on Exception catch (e) {
      emit(GetHistoricalPeriodsFailure(errmsg: e.toString()));
    }
  }
  // Character Data
  getCharacterDetails() async {
    try {
      emit(GetCharacterLoading());
      await FirebaseFirestore.instance
          .collection('characters')
          .get()
          .then((value) => value.docs.forEach((element) async {
                await getCharWarsData(element);
                characterDetails.add(
                    CharacterDetailsModel.fromJson(element.data(), charWarsList));
                emit(GetCharacterSucces());
              }));
    } on Exception catch (e) {
      emit(GetCharacterFailure(errmsg: e.toString()));
    }
  }
  // Souvenirs Data
  getSouvenirs() async {
    try {
      emit(GetSouvenirsLoading());
      await FirebaseFirestore.instance
          .collection('Souvenirs')
          .get()
          .then((value) => value.docs.forEach((element)  {
        SouvenirsDetails.add(
            SouvenirsModel.fromJson(element.data(),));
        emit(GetSouvenirsSucces());
      }));
    } on Exception catch (e) {
      emit(GetSouvenirsFailure(errmsg: e.toString()));
    }
  }
  // Historical Perioud Wars Data
  Future<void> getWarsData(
      QueryDocumentSnapshot<Map<String, dynamic>> element) async {
    await FirebaseFirestore.instance
        .collection('historical_period')
        .doc(element.id)
        .collection(FireBaseStrings.wars)
        .get()
        .then((value) => value.docs.forEach((element) {
              warsList.add(WarsModel.fromjson(element.data()));
            }));
  }
  // Character Wars Data
  Future<void> getCharWarsData(
      QueryDocumentSnapshot<Map<String, dynamic>> element) async {
    await FirebaseFirestore.instance
        .collection('characters')
        .doc(element.id)
        .collection(FireBaseStrings.wars)
        .get()
        .then((value) => value.docs.forEach((element) {
              charWarsList.add(WarsModel.fromjson(element.data()));
            }));
  }
}

