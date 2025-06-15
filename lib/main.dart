import 'package:flutter/material.dart';
import 'package:pip/pip.dart';

class PipController {
  final Pip _pip = Pip();

  Future<void> enterPipMode() async {
    if (await _pip.isSupported()) {
      // First setup the PiP with required parameters
      await _pip.setup(const PipOptions(
        autoEnterEnabled: true,
        // For Android - aspect ratio (16:9 example)
        aspectRatioX: 16,
        aspectRatioY: 9,
        // For iOS - preferred size
        preferredContentWidth: 500,
        preferredContentHeight: 500,
      ));
      // Then start PiP mode
      await _pip.start();
    }
  }

  Future<void> exitPipMode() async {
    if (await _pip.isActived()) {
      await _pip.stop();
    }
  }
}

class PipAllView extends StatefulWidget {
  const PipAllView({super.key});

  @override
  State<PipAllView> createState() => _PipAllViewState();
}

class _PipAllViewState extends State<PipAllView> with WidgetsBindingObserver {
  final PipController _pipController = PipController();
  bool _isInPipMode = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state)
  {
    if (state == AppLifecycleState.paused)
    {
      // Optional: Auto-enter PiP when app goes to background
      // Note: On iOS, this might not work due to Apple's restrictions
      _pipController.enterPipMode();
    } else if (state == AppLifecycleState.resumed) {
      // Optional: Exit PiP when app comes to foreground
      _pipController.exitPipMode();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PiP Demo")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Content that will be shown in PiP mode
              Container(
                width: 300,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "This content will appear in PiP mode",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await _pipController.enterPipMode();
                    setState(() => _isInPipMode = true);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Failed to enter PiP: $e")),
                    );
                  }
                },
                child: const Text("Enter PiP Mode"),
              ),
              if (_isInPipMode)
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await _pipController.exitPipMode();
                      setState(() => _isInPipMode = false);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Failed to exit PiP: $e")),
                      );
                    }
                  },
                  child: const Text("Exit PiP Mode"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}