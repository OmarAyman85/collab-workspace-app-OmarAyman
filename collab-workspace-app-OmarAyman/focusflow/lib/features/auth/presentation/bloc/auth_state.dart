import 'package:focusflow/features/auth/data/models/user_model.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final UserModel user;
  AuthAuthenticated(this.user);
}

class AuthUnauthenticated extends AuthState {}

class AuthUsersFetched extends AuthState {
  final List<UserModel> users;
  AuthUsersFetched(this.users);
}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}
