class User {
  String firstName;
  String lastName;
  String email;
  String dob;
  String phoneNumber;
  String gender;

  User(this.firstName, this.lastName, this.email, this.dob, this.phoneNumber,
      this.gender);

  User.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'],
        lastName = json['lastName'],
        email = json['email'],
        dob = json['dob'],
        phoneNumber = json['phoneNumber'],
        gender = json['gender'];
}
