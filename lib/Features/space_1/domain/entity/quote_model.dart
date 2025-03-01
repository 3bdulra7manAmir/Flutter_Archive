import 'package:equatable/equatable.dart';

class QuoteModel extends Equatable 
{
  QuoteModel({required this.quote, required this.author, required this.hyperlink});
  
  String? quote;
  String? author;
  String? hyperlink;

  @override
  List<String?> get props => ['$quote', '$author', '$hyperlink'];
}