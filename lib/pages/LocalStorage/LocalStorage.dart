import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  getUser(String email) async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setString("email", email);
  }

  setUser() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    return sh.getString("email");
  }
  deleteUser()async{
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.remove("email");
  }
}
