import 'package:firebase_deneme/utilities/components/dialogs/custom_snack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../models/custom_user.dart';

import '../../service/auth/auth_manager.dart';
import '../global_providers.dart';
import 'loading_state_manager.dart';
import 'user_interface.dart';

class CustomUserManager extends StateNotifier<AsyncValue<CustomUser?>> with UserInterface {
  CustomUserManager(state) : super(const AsyncValue.loading()) {
    currentCustomUser();
  }

  final _authService = AuthService();

  @override
  Future<void> currentCustomUser() async
  {
    try {
      return Future.delayed(const Duration(seconds: 2), () async {
         state  = await AsyncValue.guard(
               () => _authService.currentUser()) ;
      });
    } finally {

    }
  }

  @override
  Future<void> signIn(String email, String password, WidgetRef ref) async {

      ref
          .read(loginButtonStateProvider.notifier)
          .changeState(LoadingStates.loading);

        _authService.signIn(email, password).then((value){
        currentCustomUser().then((value){
          if(state.value != null) {
            debugPrint('Finally: -> '+state.value!.toJson().toString());
          }
        });

        ref.read(loginButtonStateProvider.notifier)
            .changeState(LoadingStates.loaded);
      });


  }

}
