import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_deneme/models/custom_user.dart';
import '../../../models/custom_user.dart';

part 'auth_service.dart';

abstract class AuthManager {

  final _firebaseAuth = FirebaseAuth.instance;
  final _firebaseDB = FirebaseFirestore.instance;

  Future<CustomUser?> signIn(String email,String password);
  Future<CustomUser?> signOut(String email,String password);
  Future<CustomUser?> currentUser();

}