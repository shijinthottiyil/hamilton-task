import 'package:get/get.dart';
import 'package:hamilton/features/home/model/user_model.dart';

class Home {
  // private constructor.
  Home._();

  // singleton instance.
  static final _instance = Home._();

  // getter for singleton instance.
  factory Home() => _instance;

  // variable for storing List<UserModel>
  var userModelList = <UserModel>[].obs;
}
