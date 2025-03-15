import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test_area/Features/06_Hive/hive_database.dart';

class HiveServices
{
  HiveServices._(); 
  static final HiveServices _instance = HiveServices._();
  static HiveServices get instance => _instance;
  

  final String _infoBoxName = "infoBox";
  Future<Box<Info>> get _infoBoxGetter async => await Hive.openBox(_infoBoxName);

  Future<void> addInfo(Info info) async
  {
    var infoAdder = await _infoBoxGetter;
    try
    {
      await infoAdder.add(info);
      print(infoAdder.values);
    }
    catch (err)
    {
      print("Error adding info: $err"); 
    }
  }

  Future<List<Info>> getInfo() async
  {
    var infoReader = await _infoBoxGetter;
    try
    {
      print(infoReader.values.toList());
      return infoReader.values.toList();
    }
    catch (err)
    {
      //print("Error getting info: $err");
      throw Exception("Failed to get info: $err");
    }
  }

  Future<void> updateInfo(int id, Info info) async
  {
    var infoUpdater = await _infoBoxGetter;
    await infoUpdater.putAt(id, info);
  }

  Future<void> deleteInfo(int id) async
  {
    var infoDeleter = await _infoBoxGetter;
    try
    {
      await infoDeleter.deleteAt(id);
      print(infoDeleter.values);
    }
    catch (err)
    {
      print("Error deleting info: $err");
    }
  }

  Future<void> deleteAllInfo() async
  {
    var infoDeleter = await _infoBoxGetter;
    await infoDeleter.clear();
  }

  // Future<ValueListenable<Box>> listenable() async
  // {
  // var listenBox = await _infoBoxGetter;
  // return listenBox.listenable();
  // }
}