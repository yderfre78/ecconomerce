import 'package:ecconomerce/src/views/pages/auth/data/models/repositories/authRepository.dart';
import 'package:ecconomerce/src/views/pages/auth/data/providerss/authRepositoryProvider.dart';
import 'package:flutter_riverpod/legacy.dart';

class LoginState {
  final String email;
  final String password;

  LoginState({this.email = "", this.password = ""});

  LoginState copyWith({String? email, String? password}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

class LoginNotifier extends StateNotifier<LoginState> {
  final Authrepository repository;
  LoginNotifier(this.repository) : super(LoginState());

  void onEmailChanged(String value) {
    state = state.copyWith(email: value);
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(password: value);
  }

  Future<void> loginProvider() async {
    final response = await repository.login(
      email: state.email,
      password: state.password,
    );
    print('Response ${response.toJson()}');
    print("email: ${state.email}");
    print("password: ${state.password}");
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  final repository = ref.read(autRepositoryProvider);
  return LoginNotifier(repository);
});
