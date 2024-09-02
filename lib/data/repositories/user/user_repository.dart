import 'package:cart_bliss/common/widgets/user_model/user_model.dart';
import 'package:cart_bliss/utils/exceptions/exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code);
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code);
    } on FormatException catch (_) {
      throw const FormatException('Invalid format.');
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}