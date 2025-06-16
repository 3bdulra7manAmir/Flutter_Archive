import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Config/router/app_router.dart';
import '../../../../Config/router/app_routes.dart';
import '../controller/pip_controller.dart';

class PipAllView extends StatefulWidget
{
  const PipAllView({super.key});

  @override
  State<PipAllView> createState() => _PipAllViewState();
}

class _PipAllViewState extends State<PipAllView> with RouteAware
{
  final PipController _pipController = PipController();
  bool _isInPip = false;

  @override
  void initState()
  {
    super.initState();
    _pipController.initialize().then((_) async
    {
      // Set up but don't start PiP
      await _pipController.setupPip(); 
      setState(() {}); // update UI if needed
    });

    _pipController.onPipStateChanged = (isActive)
    {
      setState(() => _isInPip = isActive);
    };
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    AppRouter.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose()
  {
    AppRouter.routeObserver.unsubscribe(this);
    _pipController.disposePip();
    super.dispose();
  }

  @override
  void didPush() async
  {
    await _pipController.initialize();
    await _pipController.setupPip();
    setState(() {});
  }

  @override
  void didPopNext() async
  {
    await _pipController.initialize();
    await _pipController.setupPip();
    setState(() {});
  }

  @override
  void didPushNext()
  {
    _pipController.disposePip();
  }

  @override
  void didPop()
  {
    _pipController.disposePip();
  }

  @override
  Widget build(BuildContext context)
  {
    if (!_pipController.isPipSupported)
    {
      return const Scaffold(body: Center(child: Text("PiP not supported")));
    }
    return Scaffold(
      //appBar: AppBar(title: const Text("Simple PiP")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Icon(Icons.picture_in_picture_alt, size: 50.w),
              10.verticalSpace,
              const Text("PiP is ready. Minimize or drag app to trigger."),
              10.verticalSpace,
              ElevatedButton(
                  onPressed: () async
                  {
                    AppRouter.router.pushNamed(AppRoutes.kResponsiveView);
                  },
                  child: const Text("Next"),
                ),
              20.verticalSpace,
              if (_isInPip && !Platform.isAndroid)
                ElevatedButton(
                  onPressed: () async
                  {
                    await _pipController.stopPip();
                    setState(() => _isInPip = false);
                  },
                  child: const Text("Stop PiP"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
