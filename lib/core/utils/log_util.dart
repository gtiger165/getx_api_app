import 'package:logger/logger.dart';

class LogUtil {
  final _initLogger = Logger();

  void debug(dynamic message) {
    _initLogger.d(message);
  }

  void errors(dynamic message) {
    _initLogger.e(message);
  }
}
