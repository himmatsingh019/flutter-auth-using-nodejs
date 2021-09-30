import 'package:flutter/foundation.dart';

class LoginProvider extends ChangeNotifier {
  String name = 'Boni';

  void changeName(String newname) {
    name = newname;
    notifyListeners();
  }
}
