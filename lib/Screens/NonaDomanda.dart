import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/DecimaDomanda.dart';

class NonaDomanda extends StatefulWidget {
  const NonaDomanda({Key? key}) : super(key: key);

  @override
  State<NonaDomanda> createState() => _NonaDomandaState();
}

class _NonaDomandaState extends State<NonaDomanda> {
  final TextEditingController textEditingController = TextEditingController();

  bool stateButton= false;
  int counter=0;
  String risposta= " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 9/17"),
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
                "Da quale città provengono i Beatles?",
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

                  if (textEditingController.text.toLowerCase() == "liverpool") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è giusta"),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DecimaDomanda()));
                    });
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
                        risposta= "la risposta è Liverpool";
                      });
                    }:null,
                    child: const Text("visualizza la risposta"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("${risposta}"),
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
