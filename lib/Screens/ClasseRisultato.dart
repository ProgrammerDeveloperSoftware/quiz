import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClasseRisultato extends StatelessWidget {

  String risposteGiuste= "";
  String risposteSbagliate= "";


  ClasseRisultato.rispGiuste(this.risposteGiuste);

  ClasseRisultato.rispSbagliate(this.risposteSbagliate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(risposteGiuste),
          Text(risposteSbagliate),
        ],
      ),
    );
  }
}
