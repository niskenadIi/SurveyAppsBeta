
import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';


class Kuis extends StatelessWidget {
  //const Kuis({Key key}) : super(key: key);
  Function jawaban;
  List<Map<String,Object>> pertanyaan; //Isi dari map tsb adalaah string, object 
  var soalIndex;

  //karena lebih dari dua maka tidak menggunakan constructor tetapi positional argument
  Kuis( //@required menandakan this jawaban harus diisi
    { @required this.jawaban, 
      @required this.pertanyaan,
      @required this.soalIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [     
              SizedBox(height: 10,),
              //operasi soalindex < pertanyaan.Lenght untuk memanggil if statement 
              Pertanyaan(pertanyaan[soalIndex]['Pertanyaan']),//Menggunakan soal index
              //Text(pertanyaan[soalIndex]), //Cara memanggil List soal index
              //elementAt(index))//Memanggil List,
                ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String,Object>>) //... menandakan list menerima sebuah data apapun
                      .map((jawabanText) {              //List diatas adalah list yang berisikan map( yang memiliki string dan object )
                  return Jawaban(() => jawaban(jawabanText['Skor']), jawabanText['teks']); //Mengambil variabel jawabantext dari fungsi jawaban.dart 
                  }).toList(),
            // Jawaban(jawaban),//Memanggil Function Jawaban
            // Jawaban(jawaban),
            // Jawaban(jawaban), 
             ],
          );
  }
}