import 'package:hive_flutter/hive_flutter.dart';

class AuthService {
  final authStorage = Hive.box<dynamic>('authStorage');

  void login() {
    authStorage.put('loggedIn', true);
  }

  void logout() {
    authStorage.put('loggedIn', false);
  }

  bool get loggedIn => authStorage.get(
        'loggedIn',
        defaultValue: false,
      ) as bool;
}
