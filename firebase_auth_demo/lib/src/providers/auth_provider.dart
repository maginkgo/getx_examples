import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class FirebaseAuthProvider {
  final _auth = FirebaseAuth.instance;

  Future<UserModel> getUser() async {
    return _userFromFirebase(await _auth.currentUser());
  }

  Stream<UserModel> get onUserChanged {
    return _auth.onAuthStateChanged.map((firebaseUser) => _userFromFirebase(firebaseUser));
  }

  Future<UserModel> login() async {
    final authResult = await _auth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  UserModel _userFromFirebase(FirebaseUser firebaseUser) {
    return firebaseUser != null ? UserModel(uid: firebaseUser.uid) : null;
  }
}
