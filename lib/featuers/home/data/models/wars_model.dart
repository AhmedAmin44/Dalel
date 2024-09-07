import 'package:dalel/core/models/data_model.dart';
import 'package:dalel/core/utils/app_string.dart';

class WarsModel extends DataModel {
  WarsModel(
      {required super.name, required super.discription, required super.image});

  factory WarsModel.fromjson(jsonData){
    return WarsModel(name: jsonData[FireBaseStrings.name],
        discription: jsonData[FireBaseStrings.description],
        image: jsonData[FireBaseStrings.image]);
  }
}