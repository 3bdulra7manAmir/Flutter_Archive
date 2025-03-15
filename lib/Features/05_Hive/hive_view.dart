import 'package:flutter/material.dart';
import 'package:test_area/Features/05_Hive/info_card.dart';

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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:
        [
          // ListView.separated(
          //   itemBuilder: (context, index) => ,
          //   separatorBuilder: (context, index) => ,
          //   itemCount: ,
          // ),
          CustomInfoCard(),
        ],
      ),
    );
  }
}