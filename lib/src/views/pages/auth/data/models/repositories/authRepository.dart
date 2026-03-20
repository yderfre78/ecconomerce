import 'package:dio/dio.dart';
import 'package:ecconomerce/src/views/pages/auth/data/models/authResponse.dart';
import 'package:ecconomerce/src/views/pages/auth/data/models/user.dart';

class Authrepository {
  final Dio dio;
  Authrepository(this.dio);

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      'auth/login',
      data: {'email': email, 'password': password},
    );
    print("response ${response.data}");
    return AuthResponse.fromJson(response.data);
  }

  Future<AuthResponse> register({
    required String name,
    required String lastname,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await dio.post(
      'auth/register',
      data: {
        'name': name,
        'lastname': lastname,
        'phone': phone,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
      },
    );
    return AuthResponse.fromJson(response.data);
  }
}
