import 'package:get_storage/get_storage.dart';

class GetStorageKeys{

  static const String PROFILE_KEY = "KEY_USER_PROFILE_DATA";
  static const String IS_LOGGED_IN_KEY = "KEY_IS_LOGGED_IN";



  void get removeKeys => GetStorage().erase();

}