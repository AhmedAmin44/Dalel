import '../../../../core/models/data_model.dart';

class SouvenirsModel extends DataModel {

  SouvenirsModel(
      {required super.name,
        required super.image,
        required super.discription,
        });

  factory SouvenirsModel.fromJson(jsonData,) {
    return SouvenirsModel(
        name: jsonData['name'],
        image: jsonData['image'],
        discription: jsonData['description'],
       );
  }
}
