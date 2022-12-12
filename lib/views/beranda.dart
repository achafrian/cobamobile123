import 'package:flutter/material.dart';
import 'package:coba/viewmodel/beranda_controller.dart';
import 'package:get/get.dart';
import '../models/surah.dart';

class Beranda extends GetView<BerandaController> {
  var berandaCtrl = Get.find<BerandaController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Surah>>(
        future: berandaCtrl.getAllSurah(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text("Tidak ada data"),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, data) {
              Surah surah = snapshot.data![data];
              return ListTile(
                // onTap: () {},
                leading: CircleAvatar(
                  child: Text("${surah.number}"),
                ),
                title: Text("${surah.englishName}"),
                subtitle: Text(
                    "${surah.numberOfAyahs} Ayat | ${surah.revelationType}"),
                trailing: Text("${surah.name}"),
              );
            },
          );
        },
      ),
    );
  }
}
