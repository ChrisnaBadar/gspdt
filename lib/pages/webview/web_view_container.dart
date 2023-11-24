import 'package:gspdt/constants/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String uri;
  const WebViewContainer({super.key, required this.uri});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  final controller = WebViewController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller..loadRequest(Uri.parse(widget.uri)),
      ),
    );
  }
}
