import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/01_Riverpod/data/model/user_info.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/family_provider.dart';

class FamilyProvider extends ConsumerWidget
{
  const FamilyProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final singlefamily = ref.watch(singleValueFamilyProvider("Akif"));
    final multiplefamily = ref.watch(multipleValueFamilyProvider(const UserInfo("uName", "uAddress", "uAge")));
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(singlefamily),
          Text("Hello: $multiplefamily"),
        ],
      ),
    ));
  }
}