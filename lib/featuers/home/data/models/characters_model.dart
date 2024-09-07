import 'package:dalel/featuers/home/data/models/wars_model.dart';

import '../../../../core/models/data_model.dart';

class CharacterDetailsModel extends DataModel {
  final List<WarsModel> wars;

  CharacterDetailsModel(
      {required super.name,
        required super.image,
        required super.discription,
        required this.wars});

  factory CharacterDetailsModel.fromJson(jsonData,warsList) {
    return CharacterDetailsModel(
        name: jsonData['name'],
        image: jsonData['image'],
        discription: jsonData['description'],
        wars:warsList);
  }
}
