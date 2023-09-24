import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';

class DataUserAccountLocal {
  static const userAccountKey = 'userAccountKey';

  static getDataUserAccountFromStorage() async {
    final pref = await SharedPreferences.getInstance();
    final result = pref.getString(userAccountKey) ?? '';
    return jsonDecode(result);
  }

  static setDataUserAccountToStorage(UserAccount userAccount) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(userAccountKey, userAccount.toJson());
  }
}

class UserAccountRegister {
  static const String userAccountRegisterKey = "userAccountRegisterKey";

  static Future<bool> getUserAccountRegister() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(userAccountRegisterKey) ?? false;
  }

  static setUserAccountRegister(bool isRegister) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(userAccountRegisterKey, isRegister);
  }

  static logout() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(userAccountRegisterKey);
  }
}
