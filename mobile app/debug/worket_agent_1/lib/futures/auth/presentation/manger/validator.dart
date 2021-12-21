import 'package:get/get.dart';

class Validator{

  String? emailValidate(String? val){
    if (!GetUtils.isEmail(val!)) return "Email Is not Valid";
    return null;
  }

}