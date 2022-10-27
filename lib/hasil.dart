

import 'package:flutter/material.dart';


class Hasil extends StatelessWidget {
  //const Hasil({Key key}) : super(key: key);
int totalSkor; //Fungsi untuk mengambil skor
Function resetKuis; //fungsi untuk mereset kuis

Hasil(this.totalSkor, this.resetKuis); //untuk menampilkan hasil

  //Getter
  String get hasilText{
    String hasil = 'anda berhasil';
    if (totalSkor <= 8){
      hasil = 'Sepi banget ya hidupmu';
    } else if(totalSkor <= 12){
      hasil = 'Hmm.. Lumayan juga ya kamu';
    } else if(totalSkor <= 16){
      hasil = 'Keren banget ya !';
    }else{
      hasil = 'Wow energi kamu luar biasa !';
    }
  return hasil;
  }


  @override
  Widget build(BuildContext context) {
    // return Center(
    //      //jika kondisi diatas sudah dilalukan maka akan melanjutkan perintah ini
    //         child: Text( 
    //           hasilText, //<- perintah yang telah diganti 
    //           textAlign: TextAlign.center,
    //           style:  const TextStyle ( fontSize: 28, fontWeight: FontWeight.bold),
    //                       ), //Dan melanjutkan ke else statement ini             
    // ); kode ini adalah kode awal mulanya, kemudian dirubah menjadi widget coloumn dibawah 

    return Center(
      //jika kondisi diatas sudah dilalukan maka akan melanjutkan perintah ini
                  child: Column(//Center berubah menjadi coloumn agar bisa menerima 2 widget Text dan Textbutton
                    children: [
                      Text( 
                        hasilText, //<- perintah yang telah diganti 
                        textAlign: TextAlign.center,
                        style: TextStyle ( fontSize: 25, fontWeight: FontWeight.bold), //Dan melanjutkan ke else statement ini    
                                    ),
                      TextButton(
                        style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 61, 163, 253)), //Menambahkan warna button
                        onPressed: resetKuis, 
                        child: const Text(
                          "Tekan Untuk Mulai Lagi",
                        //     style: TextButton.styleFrom(
                        //     primary: Colors.blue,
                        // ),
                          style: TextStyle(
                          color: Color.fromARGB(255, 32, 3, 3),
                          ),),
                        ),
                    ],
                  ),
          );
    
  }
}
