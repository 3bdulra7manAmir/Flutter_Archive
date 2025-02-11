import 'package:flutter/material.dart';

class TestAreaView extends StatelessWidget
{
  const TestAreaView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox.fromSize(
      size: Size(150, 80), // تحديد الحجم مباشرة
      child: ElevatedButton(
        onPressed: () {},
        child: Text("زر بحجم ثابت"),
      ),
    );
  }
}