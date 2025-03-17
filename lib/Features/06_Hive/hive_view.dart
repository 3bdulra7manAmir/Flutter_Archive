import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Features/06_Hive/hive_services.dart';
import 'package:test_area/Features/06_Hive/info_card.dart';

class HiveView extends StatelessWidget
{
  const HiveView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive DataBase"),
      ),
      body: FutureBuilder(
        future: HiveServices.instance.getInfo(),
        builder: (context, snapshot)
        {
          if(snapshot.connectionState == ConnectionState.done)
          {
            return ListView.separated(
              itemBuilder: (context, index) => const CustomInfoCard(),
              separatorBuilder: (context, index) => 15.verticalSpace,
              itemCount: snapshot.data!.length,
              shrinkWrap: true,
            );
          }

          else if(snapshot.connectionState == ConnectionState.waiting)
          {
            return const CircularProgressIndicator.adaptive();
          }
          
          else
          {
            return Center(child: Text(snapshot.error.toString()),);
          }
        },
      ),
    );
  }
}