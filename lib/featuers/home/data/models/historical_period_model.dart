import 'package:dalel/core/models/data_model.dart';
import 'package:dalel/featuers/home/data/models/wars_model.dart';

class HistoricalPeriodModel extends DataModel {
  final List<WarsModel> wars;

  HistoricalPeriodModel(
      {required super.name,
      required super.image,
      required super.discription,
      required this.wars});

  factory HistoricalPeriodModel.fromJson(jsonData,warsList) {
    return HistoricalPeriodModel(
        name: jsonData['name'],
        image: jsonData['image'],
        discription: jsonData['description'],
        wars:warsList);
  }
}
