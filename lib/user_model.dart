class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? birthdate;

  UserModel({
    this.uid,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.birthdate,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        lastName: map['secondName'],
        gender: map['gender'],
        birthdate: map['birthdate']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': lastName,
      'gender': gender,
      'birthdate': birthdate,
    };
  }
}
