import 'package:get/get.dart';
import 'package:grocery/src/features/authentication/screens/auth/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AuthController());
  }
}
