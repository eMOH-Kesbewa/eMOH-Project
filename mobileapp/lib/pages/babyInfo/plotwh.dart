import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobileapp/services/babyService/chartService.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';

class PlotWH extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlotWHState();
  }
}

class _PlotWHState extends State<PlotWH> {
  //
  WebViewController _webViewController;
  String filePath = 'html/test.html';

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;
    fetchChart();
    return Scaffold(
      primary: !isLandscape,
      appBar: AppBar(title: Text('Webview Demo')),
      body: WebView(
        initialUrl: '',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          _loadHtmlFromAssets();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _webViewController.evaluateJavascript('add(10, 10)');
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileHtmlContents = await rootBundle.loadString(filePath);
    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
