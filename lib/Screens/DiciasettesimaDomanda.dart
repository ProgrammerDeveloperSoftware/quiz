import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/DecimaDomanda.dart';

class DiciasettesimaDomanda extends StatefulWidget {
  const DiciasettesimaDomanda({Key? key}) : super(key: key);

  @override
  State<DiciasettesimaDomanda> createState() => _DiciasettesimaDomandaState();
}

class _DiciasettesimaDomandaState extends State<DiciasettesimaDomanda> {
  final TextEditingController textEditingController = TextEditingController();

  bool stateButton= false;
  int counter=0;
  String risposta= " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 17/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "In un centimetro quadrato della nostra pelle vivono circa mille batteri?\n*rispondere con vero o falso",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 500,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "inserisci la risposta",
                ),
                keyboardType: TextInputType.text,
                controller: textEditingController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {

                  if (textEditingController.text.toLowerCase() == "falso") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è giusta, 100 mila batteri"),
                      ),
                    );
                  }
                  else {

                    setState(() {
                      counter++;
                    });
                    if (counter == 3) {
                      setState(() {
                        stateButton = true;
                      });
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è sbagliata"),
                      ),
                    );
                  }
                },
                child: const Text("verifica la risposta"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: stateButton?(){
                      setState(() {
                        risposta= "la risposta è giusta, 100 mila batteri";
                      });
                    }:null,
                    child: const Text("visualizza la risposta"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(risposta),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
