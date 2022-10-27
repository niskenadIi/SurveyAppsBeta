import 'package:flutter/material.dart'; //import material
import './kuis.dart';
import './hasil.dart';

void main1() {
  runApp(MyApp()); //Syntax untuk menjalankan Application
} //My App ini adalah sebuah widget
//CTRL B memunculkan sidebar

void main() => runApp(MyApp()); //LineOfCode
//stl ( akan menampilkan statelesswidget berupa class)
 
class MyApp extends StatefulWidget {
  //mengubah ke statefull widget
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyWidget({Key? key}) : super(key: key);
  var soalIndex = 0;
  //untuk menghubungkan ke function jawaban
  var totalSkor = 0;

  var pertanyaan = [ ///Menggunakan Map
                    // Untuk beragam piliha jawaban / beberapa kondisi 
    { 
      'Pertanyaan' : 'Tempat apa yang akan anda kunjungi ?',
      'jawaban' : [
        //  'Pegunungan', 'Pantai', 'Mall', 'Hutan' <- isi dari jawaban sebelumnya
          {'teks' : 'Pegunungan', 'Skor': 10}, //Ini adalah perintah map yang ditambahkan untuk menambah nilai ( skor )
          {'teks' : 'Pantai', 'Skor': 5}, //Ini adalah perintah map yang ditambahkan untuk menambah nilai ( skor )
          {'teks' : 'Mall', 'Skor': 3}, //Ini adalah perintah map yang ditambahkan untuk menambah nilai ( skor )
          {'teks' : 'Hutan', 'Skor': 7}, //Ini adalah perintah map yang ditambahkan untuk menambah nilai ( skor )

        ],//Jawaban akan dirubah / ditambahkan menjadi map juga, untuk menambah skor
    },
    { 
      'Pertanyaan' : 'Apa warna kesukaan anda ?',
      // 'jawaban' : ['Merah', 'Kuning', 'Hijau', 'Biru'], 
      'jawaban' : [
          {'teks' : 'Merah', 'Skor' : 7 },
          {'teks' : 'Biru', 'Skor' : 3 },
          {'teks' : 'Hijau', 'Skor' : 5 },
          {'teks' : 'Hitam', 'Skor' : 1 },
          ],
    },
    { 
      'Pertanyaan' : 'Apa hobby yang anda sukai ?',
      //'jawaban' : ['Sepak Bola', 'Basket', 'Tenis', 'Voli'],
         'jawaban' : [
          {'teks' : 'Sepak Bola', 'Skor' : 2 },
          {'teks' : 'Basket', 'Skor' : 3 },
          {'teks' : 'Berenang', 'Skor' : 6 },
          {'teks' : 'Ngoding', 'Skor' : 4},
          ],
      //Diatas adalah modifikasi map yang berisi string dan beberapa teks dan int
      //Lanjutkan ke kuis.dart bagian pertanyaan
    },

      // 'Tempat apa yang akan anda kunjungi ?',
      // 'Apa warna kesukaan anda ?',
    ];
  
  void resetKuis(){// function untuk mereset soal setelah menajwab semua jawaban
      setState(() {
        soalIndex = 0;
        totalSkor = 0;
      });
  }


  void jawaban(int skor) { 
    //Function Jawaban
    // print('Tombol sudah ditekan');
    totalSkor = totalSkor + skor;
    setState(() {
      soalIndex += 1;
    });
    //Untuk menghentikan error sewaktu memasukkan jawaban yang lebih dari jumlah index dilakukan operasi berikut
    if(soalIndex < pertanyaan.length){
      print('Masih ada soal berikutnya!');
    } else {
      print('Sudah tidak ada soal!');
    }

    print(soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text( 'Quiz Interaktif '), //CTRL Space untuk memunculkan fungsi/ widget
        ),
        body: soalIndex < pertanyaan.length 
          ?  Kuis(jawaban: jawaban,
                  pertanyaan: pertanyaan,
                  soalIndex: soalIndex,
                  ) 

                   
          // const Center (           
          // child: Text('Kamu berhasil menyelesaikan kuis!'), //Dan melanjutkan ke else statement ini 
          //  ), kode sebelumnya ^ , kode dibawah agar lebih efisien dan tidak banyak memakan tempat 

          :   Hasil(totalSkor,resetKuis), //jika kondisi diatas ( Kuis )sudah dilalukan maka akan melanjutkan perintah ini

            // ElevatedButton(
            //   //Jawaban 2
            //   onPressed: jawaban,
            //   //() => print('Anda Memilih Jawaban 2'),
            //   // () Memakai Anonymous Function
            //   child: Text('Jawaban2'),
            // ),
            // ElevatedButton(
            //   //Jawaban 3
            //   onPressed: jawaban, //(){
            //   //... anonymous Function
            //   //print('Anda memilih jawaban 3');
            //   //},
            //   child: Text('Jawaban3'),
            // ),
         
      ),
    );
  }
}

//Cara merubah stateless widget ke statefull widget untuk menambahkan fungsi set
