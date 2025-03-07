import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Features/space_1/presentation/controllers/main_provider_2.dart';

import '../../domain/entity/quote_model/user_model.dart';

class FutureProvider extends ConsumerWidget
{
  const FutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final userData = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod - Future Provider"),
      ),
      body: userData.when(
        data: (data)
        {
          return ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text("User ID:\t ${data[index].id.toString()}"),
                  15.horizontalSpace,
              
                  Text("User E-mail:\t ${data[index].email}"),
                  15.horizontalSpace,
              
                  Text("User First Name:\t ${data[index].firstName}"),
                  15.horizontalSpace,
              
                  Text("User Last Name:\t ${data[index].lastName}"),
                  15.horizontalSpace,
                  
                  //Text("User Avatar:\t ${data[index].avatar}"),
                  // CachedNetworkImage(
                  //   imageUrl: "${data[index].avatar}",
                  //   errorWidget: (context, url, error) => const Icon(Icons.error),
                  //   ),
                  Image.network(data[index].avatar!),
                ],
              ),
            ),
            separatorBuilder: (context, index) => 10.verticalSpace,
            itemCount: data.length,
          );
        },
        error: (error, stackTrace) => Text("Error is:\t ${error.toString()}"),
        loading: () => const Center(child: CircularProgressIndicator.adaptive(),),
      ),
    );
  }
}