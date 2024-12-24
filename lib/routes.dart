import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    // GoRoute(
    //   path: '/onboarding',
    //   builder: (context, state) => const OnboardingPage(),
    // ),
    // GoRoute(
    //   path: '/auth',
    //   builder: (context, state) => const AuthBasePage(),
    //   routes: [
    //     GoRoute(
    //       path: 'login',
    //       builder: (context, state) => const LoginPage(),
    //     ),
    //     GoRoute(
    //       path: 'register',
    //       builder: (context, state) => const RegisterPage(),
    //     ),
    //     GoRoute(
    //       path: 'welcome',
    //       builder: (context, state) => const WelcomePage(),
    //     ),
    //   ],
    // ),
  ],
);
