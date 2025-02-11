import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_area/Features/main/data/models/info_model.dart';

class InfoNotifier extends Notifier<Set<InformationModel>>
{
  //initial Value
  @override
  Set<InformationModel> build()
  {
    return
    {
      InformationModel(image: 'assets/images/png/Login_View_Eye.png', title: 'Graves',
      description: 'Shadow.Company', id: 10,),

      InformationModel(image: 'assets/images/png/Not_View_People.png', title: 'Lazwill',
      description: 'C.I.A', id: 12,),
    };
  }

  // methods to update state
  void addInfo(InformationModel info)
  {
    if(!state.contains(info))
    {
      state = {...state, info};
    }
  }

  void removeInfo(InformationModel info)
  {
    if(state.contains(info))
    {
      state = state.where((p) => p.id != info.id).toSet();
    }
  }
}

final infoNotifierProvider = NotifierProvider<InfoNotifier, Set<InformationModel>>(()
{
  return InfoNotifier();
});