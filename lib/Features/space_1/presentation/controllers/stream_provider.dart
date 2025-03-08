import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider<int>((ref) => 
Stream.periodic(const Duration(seconds: 2), (computationCount) => computationCount,)
);