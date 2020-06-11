import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demohoroapp/user.dart';


class DatabaseServices{

  static final CollectionReference userCollection = Firestore.instance.collection('user');
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

  static Future<User> getUser(String email) async{
    QuerySnapshot userQuery = await userCollection.where("email", isEqualTo: email).getDocuments();
    DocumentSnapshot documentSnapshot = userQuery.documents.first;
    print(documentSnapshot.data);
    return User.fromJson(documentSnapshot.data);
  }
}