import 'package:e_connect_app/exceptions/app_exception.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BaseController extends GetxController {
  Function(AppException)? onError;
  Function(bool)? onLoading;
  Function(String)? onSuccess;
}
