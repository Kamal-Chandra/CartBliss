import 'package:cart_bliss/utils/formatters/formatter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.userName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture
  });

  String get fullName => '$firstName $lastName';

  String get formattedPhoneNo => Formatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split(' ');

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length>1? nameParts[1].toLowerCase(): "";
    String camelCaseUsername = '$firstName$lastName';
    String userNameWithPrefix = 'ubx_$camelCaseUsername';
    return userNameWithPrefix;
  }

  static UserModel empty ()=> UserModel(id: '', firstName:'', lastName: '', userName: '', email: '', phoneNumber: '', profilePicture: '');

  /// Convert Model to JSON for storing in Firebase
  Map<String, dynamic> toJson() {
    return  {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': userName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture
    };
  }

  /// Factory method to create User Model from Firebase document snapshot.
 factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    
    if (data != null) {
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        userName: data['Username'] ?? '',
        email: data['Email'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
      );
    } else {
      throw Exception("Document data is null");
    }
  }

}