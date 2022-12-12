import 'dart:convert';
import 'package:coba/models/surah.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class BerandaController extends GetxController {
  Future<List<Surah>> getAllSurah() async {
    Uri url = Uri.parse("http://api.alquran.cloud/v1/surah");
    var res = await http.get(url);

    List? data = (json.decode(res.body) as Map<String, dynamic>)["data"];

    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Surah.fromJson(e)).toList();
    }
  }
}
