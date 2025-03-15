import 'package:hive_flutter/adapters.dart';

Future<void> hiveInit() async
{
   /// init
  await Hive.initFlutter();

  
  /// Hive Boxes :: Storages Area
  var imgPathBox = await Hive.openBox<String>('imagePath');
  var imgBoxCall = Hive.box('imagePath');

  print(imgBoxCall.name);
}