import 'package:flutter/material.dart';

// Custom Widget
class Pertanyaan extends StatelessWidget {
  // const  Pertanyaan({Key key}) : super(key: key);
  var pertanyaan;

  Pertanyaan(this.pertanyaan); //Parameter pertanyaan

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, //Untuk memindah posisi menjadi center dengan mengambil space layar
      margin: EdgeInsets.all(10), //Memberi jarak text bagian bawah dan atas
      child: Text(
        //Agar lebih rapi gunakan wrap with container *klik lampu kuning pada text
        pertanyaan,
        style: TextStyle(fontSize: 20), //Memberi ukuran pada text
        textAlign: TextAlign.center,
      ),
    ); // Untuk memberikan posisi text dalam aplikasi
  }
}
