import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

abstract class AuthProvider {
  Future<UserModel> getUser();
  Future<UserModel> login();
  Future<void> logout();
  Stream<UserModel> onUserChanged;
}

class FirebaseAuthProvider extends AuthProvider {
  final _auth = FirebaseAuth.instance;

  @override
  Future<UserModel> getUser() async {
    return _userFromFirebase(await _auth.currentUser());
  }

  @override
  Stream<UserModel> get onUserChanged {
    return _auth.onAuthStateChanged.map((firebaseUser) => _userFromFirebase(firebaseUser));
  }

  @override
  Future<UserModel> login() async {
    final authResult = await _auth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
  }

  UserModel _userFromFirebase(FirebaseUser firebaseUser) {
    return firebaseUser != null ? UserModel(uid: firebaseUser.uid) : null;
  }
}
