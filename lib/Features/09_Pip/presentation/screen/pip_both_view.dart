import 'package:flutter/material.dart';
import 'package:pip/pip.dart';

class PipController
{
  final Pip _pip = Pip();
  bool _isInitialized = false;

  Future<void> enterPipMode() async
  {
    if (await _pip.isSupported())
    {
      if (!_isInitialized)
      {
        await _pip.setup(const PipOptions(
          autoEnterEnabled: true,
          aspectRatioX: 16,
          aspectRatioY: 9,
          preferredContentWidth: 500,
          preferredContentHeight: 500,
        ));
        _isInitialized = true;
      }
      if (!await _pip.isActived())
      {
        await _pip.start();
      }
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
  void initState()
  {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _isInPipMode = true;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _isInPipMode = false;
    _pipController.exitPipMode(); // Ensure PiP stops when leaving the screen
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!mounted) return;

    if (state == AppLifecycleState.paused) {
      _pipController.enterPipMode().then((_) {
        if (mounted) setState(() => _isInPipMode = true);
      });
    } else if (state == AppLifecycleState.resumed) {
      _pipController.exitPipMode().then((_) {
        if (mounted) setState(() => _isInPipMode = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PiP Demo")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Content that appears in PiP mode
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "This content will appear in PiP mode",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await _pipController.enterPipMode();
                    if (mounted) setState(() => _isInPipMode = true);
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Failed to enter PiP: $e")),
                      );
                    }
                  }
                },
                child: const Text("Enter PiP Mode"),
              ),
              if (_isInPipMode)
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await _pipController.exitPipMode();
                      if (mounted) setState(() => _isInPipMode = false);
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Failed to exit PiP: $e")),
                        );
                      }
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