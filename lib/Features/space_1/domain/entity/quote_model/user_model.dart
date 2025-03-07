import 'package:equatable/equatable.dart';

class UserModel extends Equatable
{
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  const UserModel({
  this.id,
  this.email,
  this.firstName,
  this.lastName,
  this.avatar
  });

  factory UserModel.fromJson(Map<String, dynamic> fJSON)
  {
    return UserModel(
      id: fJSON['id'] ?? '', //id: fJSON['id'] as int?,
      email: fJSON['email'] ?? '',
      firstName: fJSON['first_name'] ?? '',
      lastName: fJSON['last_name'] ?? '',
      avatar: fJSON['avatar'] ?? ''
    );
  }
  
  @override
  List<Object?> get props => [id, email, firstName, lastName, avatar];
  
}