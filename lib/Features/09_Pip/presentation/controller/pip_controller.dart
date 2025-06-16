import 'dart:io';
import 'package:flutter/services.dart';
import 'package:pip/pip.dart';

class PipController
{
  final _pip = Pip();

  bool _isPipSupported = false;
  bool _isPipActive = false;
  int _playerView = 0;

  // Getters
  bool get isPipSupported => _isPipSupported;
  bool get isPipActive => _isPipActive;
  int get playerView => _playerView;

  // Callback for UI updates
  Function(bool)? onPipStateChanged;

  Future<void> initialize() async
  {
    try
    {
      _isPipSupported = await _pip.isSupported();
      _isPipActive = await _pip.isActived();

      // Register state observer
      await _pip.registerStateChangedObserver(PipStateChangedObserver(
        onPipStateChanged: (state, error)
        {
          print('[PiP State Changed] state: $state, error: $error');
          _isPipActive = state == PipState.pipStateStarted;
          onPipStateChanged?.call(_isPipActive);
          if (state == PipState.pipStateFailed)
          {
            print('[PiP Failed] error: $error');
            _pip.dispose();
          }
        },
      ));
    }
    on PlatformException
    {
      _isPipSupported = false;
      _isPipActive = false;
    }
  }

  Future<bool> setupPip() async
  {
    try
    {
      final options = PipOptions(
        autoEnterEnabled: true,
        // Android options
        aspectRatioX: 16,
        aspectRatioY: 9,
        sourceRectHintLeft: 0,
        sourceRectHintTop: 0,
        sourceRectHintRight: 0,
        sourceRectHintBottom: 0,
        seamlessResizeEnabled: true,
        useExternalStateMonitor: true,
        externalStateMonitorInterval: 100,
        // iOS options
        contentView: 0, // removed NativePlugin
        sourceContentView: _playerView,
        preferredContentWidth: 16,
        preferredContentHeight: 9,
        controlStyle: 2,
      );

      return await _pip.setup(options);
    }
    catch (e)
    {
      print('PiP Setup error: $e');
      return false;
    }
  }

  Future<bool> startPip() async
  {
    try
    {
      return await _pip.start();
    }
    catch (e)
    {
      print('PiP Start error: $e');
      return false;
    }
  }

  Future<void> stopPip() async
  {
    if (!Platform.isAndroid)
    {
      try
      {
        await _pip.stop();
      }
      catch (e)
      {
        print('PiP Stop error: $e');
      }
    }
  }

  Future<void> disposePip() async
  {
    try
    {
      await _pip.dispose();
    }
    catch (e)
    {
      print('PiP Dispose error: $e');
    }
  }

  void setPlayerView(int viewId)
  {
    _playerView = viewId;
  }
}
