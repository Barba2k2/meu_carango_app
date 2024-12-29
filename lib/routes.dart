import 'package:go_router/go_router.dart';

import 'src/core/features/login/features/presentation/login_screen.dart';
import 'src/core/features/onboarding/presentation/pages/onboarding_page.dart';
import 'src/core/features/splash/presentation/pages/splash_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
        // GoRoute(
        //   path: 'register',
        //   builder: (context, state) => const RegisterPage(),
        // ),
      ],
    ),
  ],
);
