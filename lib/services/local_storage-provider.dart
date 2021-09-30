import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static const String _isUserSignedIn = 'is_user_logged_in';
  // static const String _signedInUserToken = 'signed_in_user_token';

  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    try {
      _sharedPreferences = await SharedPreferences.getInstance();
    } catch (error) {
      print(error);
    }
  }

  static Future<bool> setUserSignedInStatus(bool status) =>
      _sharedPreferences!.setBool(_isUserSignedIn, status);

  static bool? get isUserSignedIn =>
      _sharedPreferences!.getBool(_isUserSignedIn);
}
