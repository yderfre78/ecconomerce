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

  Future<AuthResponse> register(User user) async {
    final response = await dio.post('auth/register', data: user);
    return AuthResponse.fromJson(response.data);
  }
}
