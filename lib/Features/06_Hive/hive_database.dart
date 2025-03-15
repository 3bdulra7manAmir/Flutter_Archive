import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

part 'hive_database.g.dart';


@HiveType(typeId: 1, adapterName: "CardInfoAdapter")
class Info extends Equatable
{
  const Info({required this.imgPath, required this.titleText, required this.subTitleText});
  
  @HiveField(0)
  final String imgPath; //Default value Could be Used

  @HiveField(1, defaultValue: "Hill, Hydra") //Default value Could be Used
  final String titleText;

  @HiveField(2, defaultValue: "Cut of One Head to more Shall take it's Place") //Default value Could be Used
  final String subTitleText;
  
  @override
  List<Object?> get props => [imgPath, titleText, subTitleText];
}