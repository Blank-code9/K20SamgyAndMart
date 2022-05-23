import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: Scaffold(
          // ignore: prefer_const_constructors
          body: SafeArea(
            // ignore: prefer_const_constructors
            child: WebView(
              // ignore: prefer_const_constructors
              initialUrl:
                  "http://192.168.1.17/CapstoneThesis/tablet/index.php", //location of the final
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ));
  }
}
