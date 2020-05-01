import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Kryesore extends StatefulWidget {
  @override
  _KryesoreState createState() => _KryesoreState();
}

class _KryesoreState extends State<Kryesore> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kryesore"),
      ),
      body: new Center(
        child: new Text("Faqja Kryesore"),
      ),
    ); 

    /* return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kryesore"),
      ),
      body: WebView(
        initialUrl: 'http://qytetarin.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller){
          _controller.complete(controller);
        },
      )
    ); */
  }
}