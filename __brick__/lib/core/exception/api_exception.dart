import 'app_exception.dart';

class ApiException extends AppException {
  ApiException(super.message, {super.code});
}