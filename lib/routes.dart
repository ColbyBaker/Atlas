import 'package:atlas/home/home.dart';
import 'package:atlas/lifts/lifts.dart';
import 'package:atlas/login/login.dart';
import 'package:atlas/profile/profile.dart';
import 'package:atlas/tools/tools.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/lifts': (context) => const LiftsScreen(),
  '/tools': (contex) => const ToolScreen(),
  '/profile': (context) => const ProfileScreen(),
};
