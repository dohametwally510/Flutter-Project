class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? governate;
  String? telnum;
  String? age;
  String? gender;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.governate, this.telnum, this.age, this.gender});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      governate: map['governate'],
      telnum: map['telnum'],
      age: map['age'],
      gender: map['gender'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'governate': governate,
      'telnum': telnum,
      'age': age,
      'gender': gender,
    };
  }
}
/*

final governateEditingController = new TextEditingController();
  final telnumEditingController = new TextEditingController();
  final ageEditingController = new TextEditingController();
  final genderEditingController = new TextEditingController();
  
*/