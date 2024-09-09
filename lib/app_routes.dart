import 'package:android_intern/screens/home.dart';
import 'package:android_intern/screens/language_select.dart';
import 'package:android_intern/screens/phone_auth_screen.dart';
import 'package:android_intern/screens/profile_select_screen.dart';
import 'package:android_intern/screens/verify_phone_ui.dart';

final appRoutes = {
  '/': (context) => const LanguageSelect(),
  '/phoneauth': (context) => const PhoneAuthScreen(),
  '/verifyphone': (context) => const VerifyPhoneUi(),
  '/profileselect': (context) => const ProfileSelectScreen(),
  '/home': (context) => const Home()
};
