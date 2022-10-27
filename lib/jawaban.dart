import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  //const Jawaban({Key key}) : super(key: key);
  Function handlePilih;
  String jawabanText;

  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        child : ElevatedButton(
              //jawaban 1
              onPressed: handlePilih,//mengambil function jawaban untuk output onPressed
              //Ketika tombol onPressed ditekan akan menjalankan jawaban
              style: ElevatedButton.styleFrom( //Syntax untuk memberi warna
                primary: Colors.blue,
              ), 
              
              child: Text(jawabanText),
            ),
      );
    
  }
}