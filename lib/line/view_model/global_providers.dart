import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/custom_user.dart';
import 'admin_works/user_manager.dart';
import 'admin_works/loading_state_manager.dart';

final currentUser =
    StateNotifierProvider<CustomUserManager, AsyncValue<CustomUser?>>(
        (ref) {
  return CustomUserManager(const AsyncValue.loading());
});

final loginButtonStateProvider =
    StateNotifierProvider<LoginButtonStateManager, LoadingStates>((ref) {
  return LoginButtonStateManager(LoadingStates.loaded);
});
