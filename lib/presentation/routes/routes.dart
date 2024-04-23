import 'package:go_router/go_router.dart';
import 'package:protego_vpn/presentation/pages/home/view/home_page.dart';
import 'package:protego_vpn/presentation/pages/instruction/view/instruction_page.dart';
import 'package:protego_vpn/presentation/pages/settings/components/privacy_policy.dart';
import 'package:protego_vpn/presentation/pages/settings/components/term_of_service.dart';
import 'package:protego_vpn/presentation/pages/settings/view/settings_page.dart';
import 'package:protego_vpn/presentation/pages/start/view/start_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
    name: '/',
    path: '/',
    builder: (context, state) => StartPage(),
    ),
    GoRoute(
    name: '/home',
    path: '/home',
    builder: (context, state) => HomePage(),
    ),
     GoRoute(
    name: '/instruction',
    path: '/instruction',
    builder: (context, state) => InstructionPage(),
    ),
     GoRoute(
    name: '/settings',
    path: '/settings',
    builder: (context, state) => SettingPage(),
    ),
      GoRoute(
    name: '/termof',
    path: '/termof',
    builder: (context, state) => TermofServicePage(),
    ),
      GoRoute(
    name: '/privacypolicy',
    path: '/privacypolicy',
    builder: (context, state) => PrivacyPolicyPage(),
    ),
]);