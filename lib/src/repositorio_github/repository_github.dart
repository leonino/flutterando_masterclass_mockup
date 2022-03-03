import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepositorioGitHubPage extends StatefulWidget {
  const RepositorioGitHubPage({Key? key}) : super(key: key);

  @override
  State<RepositorioGitHubPage> createState() => _RepositorioGitHubPageState();
}

class _RepositorioGitHubPageState extends State<RepositorioGitHubPage> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://github.com/leonino/leonino',
    );
  }
}
