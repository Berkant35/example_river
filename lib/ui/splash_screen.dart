
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var isConfigured = false;
  @override
  void initState() {
    super.initState();
    _configureFirebase();
  }



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: !isConfigured  ?
      const Center(
        child: FlutterLogo(
          size: 24,
        ),
      ) : const LoginPage(),
    );
  }

  Future<void> _configureFirebase() async {
    try{
      await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBuVMrfbcsReEiP3xYq3wBlpEg7Mwhr8V8",
              appId: "1:385221014133:android:1e83b52b7117dd7610fe3c",
              messagingSenderId: "385221014133",
              projectId: "deneme-75e92"
          )
      ).then((value) {
        Future.delayed(const Duration(milliseconds: 2450),(){
          isConfigured = true;
          setState(() {});
        });
      });
    }catch(e){

      debugPrint(e.toString()+ ' <--- ');

    }

  }
}
