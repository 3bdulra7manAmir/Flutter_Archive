// ignore_for_file: unused_local_variable

import 'package:hive_flutter/adapters.dart';

Future<void> hiveInit() async
{
  /// init
  try
  {
    await Hive.initFlutter();
    print("Hive initialized Successfully");
  }
  catch (err)
  {
    print("Error initializing Hive: $err");
  }

  
  /// Hive Boxes :: Storages Area
  try
  {
    if (!Hive.isBoxOpen('imgPathBox'))
    {
      var imgBox = await Hive.openBox<String>('imgPathBox');
      //imgBox.put("id", "1");
      //imgBox.put("name", "Akif");
      //print(imgBox.keys);
      //print(imgBox.values);
      //print(imgBox.length);

      //print(imgBox.get("name"));
      //print(imgBox.get("notFound", defaultValue: "This is Default Value"));

      //imgBox.put("id", "2");
      //print(imgBox.get("id"));

      // imgBox.delete("id");
      // print(imgBox.get("id"));
      // imgBox.deleteAll(imgBox.keys);
      // imgBox.deleteAll(imgBox.values);
      // imgBox.deleteFromDisk();

      

      print("IMGPath Box Opened.");
    }
    else
    {
      print("IMGPath Box is not Opened.");
    }
  }
  catch (err)
  {
    print("Error opening IMGPath Box: $err");
  }

  await Hive.close();

}