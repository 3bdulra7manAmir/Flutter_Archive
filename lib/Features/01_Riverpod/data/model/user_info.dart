import 'package:equatable/equatable.dart';

class UserInfo extends Equatable
{
  final String? uName;
  final String? uAddress;
  final String? uAge;

  const UserInfo(this.uName, this.uAddress, this.uAge);
  
  @override
  List<Object?> get props => [uName, uAddress, uAge];
  
}