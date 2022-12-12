import 'package:http/http.dart' as http;

var base = "http://api.alquran.cloud/v1/juz/30/";

getPost() {
  Uri url = Uri.parse("$base/en.asad");
  var res = http.get(url);
}
