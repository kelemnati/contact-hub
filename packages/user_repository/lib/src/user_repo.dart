// all the abstract class that will be implemented on the firebase_user_repository

import 'dart:ffi';

import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  // for sign in we use email and password
  Future<void> signIn(String emial, String password);

  // for logout
  Future<void> logOut();

  // for sign up we use MyUser class
  Future<MyUser> signUp(MyUser myUser, String password);

  // for reset password
  Future<void> resetPassword(String email);
}
