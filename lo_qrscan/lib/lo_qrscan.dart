
import 'dart:async';

import 'package:flutter/services.dart';

class LoQrscan {
  static const MethodChannel _channel =
      const MethodChannel('lo_qrscan');

  /// screen qr
  static Future<String> get loScan async {
    final String qrString = await _channel.invokeMethod('scan_qr');
    return qrString;
  }

}
