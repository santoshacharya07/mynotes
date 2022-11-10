import 'package:mycounter/services/auth/auth_user.dart';

abstract class AuthProvider {
  Future<void> inialize();

  AuthUser? get currentUser;
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });
  Future<AuthUser> cresteUser({
    required String email,
    required String password,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}

