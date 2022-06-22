

import 'package:firebase_deneme/models/custom_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


abstract class UserInterface{
  Future<void> currentCustomUser();
  Future<void> signIn(String email,String password,WidgetRef ref);
}