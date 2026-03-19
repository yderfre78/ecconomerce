import 'package:ecconomerce/src/views/pages/auth/data/models/repositories/authRepository.dart';
import 'package:flutter_riverpod/legacy.dart';

class RegisterState {
  final String name;
  final String lastname;

  final String email;
  final String password;
  final String confirmPassword;

  RegisterState({
    this.email = "",
    this.password = "",
    this.lastname = "",
    this.name = "",
    this.confirmPassword = "",
  });

  RegisterState copyWith({
    String? email,
    String? password,
    String? name,
    String? lastname,
    String? confirmPassword,
  }) {
    return RegisterState(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}

class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState());

  void onNameChanged(String value) {
    state = state.copyWith(name: value);
  }

  void onlastnamelChanged(String value) {
    state = state.copyWith(lastname: value);
  }

  void onEmailChanged(String value) {
    state = state.copyWith(email: value);
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(password: value);
  }

  void onConfirmPasswordChanged(String value) {
    state = state.copyWith(confirmPassword: value);
  }

  Future<void> loginProvider() async {
    final response = await repository.register(
      name: state.name,
      lastname: state.lastname,

      email: state.email,
      password: state.password,
      confirmPassword: state.confirmPassword,
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
