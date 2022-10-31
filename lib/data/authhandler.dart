import 'dart:js' as js;

const uri = "http://localhost:8000/v1/auth";

void SendAuthRequest() async {
  js.context.callMethod('open', [uri, '_self']);
  // window.open(uri, "Auth");
  /*
  final client = http.Client();
  var uri = Uri.http("localhost:8000", "v1/auth");
  var response = await client.get(uri);

  while (response.isRedirect) {
    String? redirection = response.headers["Location"];
    if (redirection != null) {
      window.open(redirection, "_self");
    }
  }
  */

  // Process the response.
}
