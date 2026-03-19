import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: "http://192.168.1.11:3000/",
      headers: {'Content-type': 'application/json'},
    ),
  );
});
