import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test_area/Features/06_Hive/hive_database.dart';

class HiveServices
{
  HiveServices._(); 
  static final HiveServices _instance = HiveServices._();
  static HiveServices get instance => _instance;
  

  final String _infoBoxName = "infoBox";
  Box<Info>? _infoBox; // Store the opened box

  Future<Box<Info>> get _infoBoxGetter async
  {
    return _infoBox ??= await Hive.openBox<Info>(_infoBoxName);
  }

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
      //infoReader.add(const Info(imgPath: "assets/images/icons/svg/Crown.svg"));
      //infoReader.add(const Info(titleText: "This is Title"));
      //infoReader.add(const Info(subTitleText: "This is a SubTitle"));
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
    try
    {
      
      await infoUpdater.putAt(id, info);
    }

    catch (err)
    {
      print("Error updating info: $err");
    }
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
    try
    {
      await infoDeleter.clear();
    }

    catch (err)
    {
      print("Error deleting all info: $err");
    }
  }

  /// Returns a ValueListenable for listening to changes in the Hive box
  Future<ValueListenable<Box<Info>>> listenable() async
  {
    var listenableBox = await _infoBoxGetter;
    return listenableBox.listenable();
  }
}