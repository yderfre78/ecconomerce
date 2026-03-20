import 'package:ecconomerce/src/views/pages/auth/data/models/repositories/authRepository.dart';
import 'package:ecconomerce/src/views/pages/auth/data/providerss/authRepositoryProvider.dart';
import 'package:flutter_riverpod/legacy.dart';

class RegisterState {
  final String name;
  final String lastname;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;

  RegisterState({
    this.email = "",
    this.phone = "",
    this.password = "",
    this.lastname = "",
    this.name = "",
    this.confirmPassword = "",
  });

  RegisterState copyWith({
    String? email,
    String? password,
    String? name,
    String? phone,

    String? lastname,
    String? confirmPassword,
  }) {
    return RegisterState(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}

class RegisterNotifier extends StateNotifier<RegisterState> {
  final Authrepository repository;
  RegisterNotifier(this.repository) : super(RegisterState());

  void onNameChanged(String value) {
    state = state.copyWith(name: value);
  }

  void onlastnamelChanged(String value) {
    state = state.copyWith(lastname: value);
  }

  void onEmailChanged(String value) {
    state = state.copyWith(email: value);
  }

  void onPhoneChanged(String value) {
    state = state.copyWith(phone: value);
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(password: value);
  }

  void onConfirmPasswordChanged(String value) {
    state = state.copyWith(confirmPassword: value);
  }

  Future<void> registerPovider() async {
    final response = await repository.register(
      name: state.name,
      lastname: state.lastname,
      phone: state.phone,
      email: state.email,
      password: state.password,
      confirmPassword: state.confirmPassword,
    );
    print('Response ${response.toJson()}');
    print("email: ${state.email}");
    print("email: ${state.phone}");
    print("password: ${state.password}");
  }
}

final registerProvider = StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) {
    final repository = ref.read(autRepositoryProvider);
    return RegisterNotifier(repository);
  },
);
