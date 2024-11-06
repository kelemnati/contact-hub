// all the abstract class that will be implemented on the firebase_user_repository

import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  Stream<User?> get user;

  // for sign in we use email and password
  Future<void> signIn(String emial, String password);

  // for logout
  Future<void> logOut();

  // for sign up we use MyUser class
  Future<MyUser> signUp(MyUser myUser, String password);

  // for reset password
  Future<void> resetPassword(String email);

  // to push data to the firestore database
  Future<void> setUserData(MyUser user);

  // to get data from the firestore database
  Future<MyUser> getMyUser(String myUserId);
}
