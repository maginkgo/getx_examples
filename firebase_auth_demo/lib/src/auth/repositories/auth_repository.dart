import 'package:get/get.dart';

import '../models/user_model.dart';
import '../providers/auth_provider.dart';

class AuthRepository {
  final AuthProvider _authProvider;

  final _user = Rx<UserModel>();
  UserModel get user => this._user.value;
  set user(UserModel value) => this._user.value = value;

  AuthRepository(AuthProvider authProvider) : _authProvider = authProvider {
    _user.bindStream(_authProvider.onUserChanged);
  }

  Future<void> login() async => _authProvider.login();

  Future<void> logout() async => _authProvider.logout();
}
