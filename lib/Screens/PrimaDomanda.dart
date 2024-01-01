import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/SecondaDomanda.dart';

class PrimaDomanda extends StatefulWidget {
  const PrimaDomanda({Key? key}) : super(key: key);

  @override
  State<PrimaDomanda> createState() => _PrimaDomandaState();
}

class _PrimaDomandaState extends State<PrimaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 1/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Che colore era il cavallo di Napoleone?",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.red[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è giusta"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondaDomanda()));
                    });
                  },
                  child: const Text("bianco"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è sbagliata"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondaDomanda()));
                    });
                  },
                  child: const Text("nero"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
