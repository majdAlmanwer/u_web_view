import 'dart:async';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebController extends GetxController {
  final Completer<WebViewController> controller =
      Completer<WebViewController>();
  late WebViewController myController;
}
