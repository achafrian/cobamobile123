import 'dart:convert';
import 'package:coba/models/detail_surah.dart';
import 'package:coba/models/surah.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("http://api.alquran.cloud/v1/surah");
  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  // 0-113 = 1-114
  // print(data[113]);

  // data dari api ( raw data ) -> Model ( yg sudah disiplin )
  Surah surahAnnas = Surah.fromJson(data[113]);

  // print(surahAnnas.number);
  // print("===");
  // print(surahAnnas.name);
  // print("===");
  // print(surahAnnas.englishName);
  // print("===");
  // print(surahAnnas.englishNameTranslation);
  // print("===");
  // print(surahAnnas.numberOfAyahs);
  // print("===");
  // print(surahAnnas.revelationType);

  Uri urlAnnas =
      Uri.parse("http://api.alquran.cloud/v1/surah/${surahAnnas.number}");
  var resAnnas = await http.get(urlAnnas);

  Map<String, dynamic> dataAnnas =
      (json.decode(resAnnas.body) as Map<String, dynamic>)["data"];
  // print(dataAnnas);

  // data dari api ( raw data ) -> Model ( yg sudah disiapin )
  DetailSurah annas = DetailSurah.fromJson(dataAnnas);

  print(annas.ayahs![0].text);
}
