import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(){
  runApp(MaterialApp(
    home: WebViewEx(),
  ));
}

class WebViewEx extends StatefulWidget {
  const WebViewEx({super.key});

  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController webViewController;
  @override
  void initState() {
    webViewController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..loadRequest(Uri.parse('https://fluttergems.dev/'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView"),
        elevation: 6,
      ),
      body: Column(
        children: [
          Expanded(child: Image.network("https://images.unsplash.com/photo-1519378058457-4c29a0a2efac?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zmxvd2Vyc3xlbnwwfHwwfHx8MA%3D%3D")),
          Expanded(
            child: WebViewWidget(controller: webViewController)
          ),
        ],
      ),
    );
  }
}