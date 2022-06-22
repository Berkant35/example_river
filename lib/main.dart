import 'package:firebase_deneme/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: DenemePage()));
}

class DenemePage extends StatelessWidget {
  const DenemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return const MaterialApp(
        title: 'Demo',
        home: SplashScreen(),
      );
    });
  }
}
