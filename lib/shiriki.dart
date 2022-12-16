
import 'dart:async';

import 'package:flutter/services.dart';

class Shiriki {
  static const MethodChannel _channel = MethodChannel('shiriki');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
