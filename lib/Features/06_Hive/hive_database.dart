import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

part 'hive_database.g.dart';


@HiveType(typeId: 1, adapterName: "InfoAdapter")
class Info extends Equatable
{
  const Info({this.id, this.imgPath, this.titleText, this.subTitleText});
  
  @HiveField(0, defaultValue: 0)
  final int? id;

  @HiveField(1, defaultValue: "assets/images/icons/svg/Crown.svg")
  final String? imgPath;

  @HiveField(2, defaultValue: "Hill, Hydra") //Default value Could be Used
  final String? titleText;

  @HiveField(3, defaultValue: "Cut of One Head to more Shall take it's Place") //Default value Could be Used
  final String? subTitleText;
  
  @override
  List<Object?> get props => [id, imgPath, titleText, subTitleText];
}