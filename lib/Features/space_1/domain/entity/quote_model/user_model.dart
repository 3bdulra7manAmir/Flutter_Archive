class UserModel
{
  final String? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  UserModel({
  this.id,
  this.email,
  this.firstName,
  this.lastName,
  this.avatar
  });

  factory UserModel.fromJson(Map<String, dynamic> fJSON)
  {
    return UserModel(
      id: fJSON['id'] ?? '',
      email: fJSON['email'] ?? '',
      firstName: fJSON['first_name'] ?? '',
      lastName: fJSON['last_name'] ?? '',
      avatar: fJSON['avatar'] ?? ''
    );
  }
  
}