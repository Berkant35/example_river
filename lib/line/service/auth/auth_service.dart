part of 'auth_manager.dart';

class AuthService extends AuthManager {
  @override
  Future<CustomUser?> signIn(String email, String password) async {
    try{
      var credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if(credential.user != null){
        var snapshot = await _firebaseDB.collection('Users').doc(credential.user!.uid).get();
        var customUser = CustomUser.fromJson(snapshot.data());
        return customUser;
      }else{
        return null;
      }
    }catch(e){
      debugPrint(e.toString()+'<-- Hata');
    }
    return null;
  }

  @override
  Future<CustomUser?> signOut(String email, String password) {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<CustomUser?> currentUser()async {
    try{
      User? currentAdminFromFirebase = _firebaseAuth.currentUser;

      if(currentAdminFromFirebase  != null){
        var snapshot = await _firebaseDB.collection('Users').doc(currentAdminFromFirebase.uid).get();
        var customUser = CustomUser.fromJson(snapshot.data());
        return customUser;
      }else{
        return null;
      }
    }catch(e){
      debugPrint(e.toString()+'<-- Hata');
    }
    return null;
  }

}
