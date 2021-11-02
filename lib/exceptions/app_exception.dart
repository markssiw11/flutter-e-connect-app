class AppException implements Exception {
  final message;
  AppException({this.message});

  String toString() {
    return "$message";
  }
}

class CommonException extends AppException {
  final String message;
  CommonException({required this.message});
}
