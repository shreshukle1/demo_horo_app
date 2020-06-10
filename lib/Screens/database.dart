import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseServices{

  final CollectionReference userCollection = Firestore.instance.collection('user');
  final String uid;
  DatabaseServices({this.uid});

  Future updateUserData(String firstName, String lastName, String email, var dob,
                         String phoneNumber, String gender) async {
    return await userCollection.document(uid).setData({
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'dob': dob,
      'phoneNumber': phoneNumber,
      'gender': gender,
    });

  }
}