import 'package:flutter/material.dart';
import 'package:test_area/Config/router/app_router.dart';
import 'package:test_area/Config/router/app_routes.dart';

class AutoDisposeHome extends StatelessWidget
{
  const AutoDisposeHome({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text("Go To Auto Dispose"),),
      body: Center(
        child: ElevatedButton(

          onPressed: (){AppRouter.router.pushNamed(AppRoutes.kAutoDisposeView);},
          child: const Text("Go To Auto Dispose")
        ),
      ),
    );
  }
}