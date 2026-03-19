import 'package:ecconomerce/src/views/pages/auth/login/login_page.dart';
import 'package:ecconomerce/src/views/pages/auth/register/register_page.dart';
import 'package:go_router/go_router.dart';

import '../../home/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
);
