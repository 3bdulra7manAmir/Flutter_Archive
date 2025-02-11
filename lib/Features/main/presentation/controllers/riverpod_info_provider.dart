import 'package:test_area/Core/constants/info_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_area/Features/main/data/models/info_model.dart';

part 'riverpod_info_provider.g.dart';

//Manual Coded Providers
// final infoProvider = Provider( (ref) {return infoList;} );
// final lessInfoProvider = Provider( (ref) {return infoList.where((a) => a.age == 18).toList();});


//Auto Generated Providers
@riverpod
List<InformationModel> info(ref)
{
  return infoList;
}

@riverpod
List<InformationModel> lessInfo(ref)
{
  return infoList.where((a) => a.age == 18).toList();
}