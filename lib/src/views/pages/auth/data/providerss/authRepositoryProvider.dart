import 'package:ecconomerce/src/views/pages/auth/core/network/dioProvider.dart';
import 'package:ecconomerce/src/views/pages/auth/data/models/repositories/authRepository.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final autRepositoryProvider = Provider<Authrepository>((ref) {
  final dio = ref.read(dioProvider);
  return Authrepository(dio);
});
