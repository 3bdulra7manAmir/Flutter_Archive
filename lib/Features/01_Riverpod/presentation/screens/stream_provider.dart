import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/stream_provider.dart';

class StreamProvider extends ConsumerWidget
{
  const StreamProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final streamData = ref.watch(streamProvider);
    return streamData.when(data: (data) => Scaffold(
      body: Center(child: Text(data.toString()),)
    ),
    error: (error, stackTrace) => Center(child: Text(error.toString())),
    loading: () => const Center(child: CircularProgressIndicator.adaptive(),),
    );
  }
}