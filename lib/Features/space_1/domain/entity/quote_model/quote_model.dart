import 'package:equatable/equatable.dart';

class QuoteModel extends Equatable {
  final String? q;
  final String? a;
  final String? h;

  const QuoteModel({this.q, this.a, this.h});

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        q: json['q'] as String?,
        a: json['a'] as String?,
        h: json['h'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'q': q,
        'a': a,
        'h': h,
      };

  @override
  List<Object?> get props => [q, a, h];
}
