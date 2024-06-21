import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/webView_controller.dart';
import '../screens/nointernet_screen.dart';

class WebViewStack extends StatefulWidget {
  const WebViewStack({Key? key}) : super(key: key);

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  WebController webController = Get.put(WebController());
  var loadingPercentage = 0;
  // late WebViewController _myController;
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://utajeer.com/',
      javascriptMode: JavascriptMode.unrestricted,

      onWebViewCreated: (webViewController) {
        webController.controller.complete(webViewController);
        webController.myController = webViewController;
      },

      // ... to here.
      onPageStarted: (url) {},
      onWebResourceError: (ErrorWidget) {
        setState(() {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const NoInternet()),
          );
        });
      },
      onProgress: (progress) async {},
      onPageFinished: (url) async {
        await webController.myController.runJavascript(
            "javascript:(function() { " +
                "var footer = document.getElementsByTagName('footer')[0];" +
                "footer.parentNode.removeChild(footer);" +
                "})()");
      },
    );
  }
}
