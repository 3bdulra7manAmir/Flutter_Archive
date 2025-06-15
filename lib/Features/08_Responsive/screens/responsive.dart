import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveView extends StatelessWidget
{
  const ResponsiveView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsvie"),),
      body: Column(
        children:
        [
          Container(
            //margin: EdgeInsets.all(10),
            //width: MediaQuery.of(context).size.width * 1,
            //height: MediaQuery.of(context).size.height * 0.9,
            width: ScreenUtil().screenWidth * 1,
            //width: 400.w,
            height: 400.h,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(70.r)
            ),
            //width: 170.w,
            //height: 200.h,
            child: ElevatedButton(
                onPressed: (){}, child: const Text("data"),
              ),
          )
        ],
      ),
    );
  }
}