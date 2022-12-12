// API URL : http://api.alquran.cloud/v1/juz/30/en.asad
// Get Seluruh Surah

// import 'package:meta/meta.dart';
import 'dart:convert';

Surah surahFromJson(String str) => Surah.fromJson(json.decode(str));

String surahToJson(Surah data) => json.encode(data.toJson());

// class Surah {
//   Surah({
//     this.number,
//     this.text,
//     this.surah,
//     this.numberInSurah,
//     this.juz,
//     this.manzil,
//     this.page,
//     this.ruku,
//     this.hizbQuarter,
//     this.sajda,
//   });

//   int? number;
//   String? text;
//   SurahClass? surah;
//   int? numberInSurah;
//   int? juz;
//   int? manzil;
//   int? page;
//   int? ruku;
//   int? hizbQuarter;
//   bool? sajda;

//   factory Surah.fromJson(Map<String, dynamic> json) => Surah(
//         number: json["number"],
//         text: json["text"],
//         surah: SurahClass.fromJson(json["surah"]),
//         numberInSurah: json["numberInSurah"],
//         juz: json["juz"],
//         manzil: json["manzil"],
//         page: json["page"],
//         ruku: json["ruku"],
//         hizbQuarter: json["hizbQuarter"],
//         sajda: json["sajda"],
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         "text": text,
//         "surah": surah?.toJson(),
//         "numberInSurah": numberInSurah,
//         "juz": juz,
//         "manzil": manzil,
//         "page": page,
//         "ruku": ruku,
//         "hizbQuarter": hizbQuarter,
//         "sajda": sajda,
//       };
// }

class Surah {
  Surah({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.numberOfAyahs,
  });

  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  int? numberOfAyahs;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"],
        name: json["name"],
        englishName: json["englishName"],
        englishNameTranslation: json["englishNameTranslation"],
        revelationType: json["revelationType"],
        numberOfAyahs: json["numberOfAyahs"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
        "englishName": englishName,
        "englishNameTranslation": englishNameTranslation,
        "revelationType": revelationType,
        "numberOfAyahs": numberOfAyahs,
      };
}
