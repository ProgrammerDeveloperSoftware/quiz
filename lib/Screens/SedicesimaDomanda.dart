import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/DiciasettesimaDomanda.dart';
import 'package:quiz/Screens/PrimaDomanda.dart';

class SedicesimaDomanda extends StatefulWidget {
  const SedicesimaDomanda({Key? key}) : super(key: key);

  @override
  State<SedicesimaDomanda> createState() => _SedicesimaDomandaState();
}

class _SedicesimaDomandaState extends State<SedicesimaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 16/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "In Danimarca a causa di un fulmine sono morte 31 mucche?",
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
                        content: Text(
                            "la risposta è giusta"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DiciasettesimaDomanda()));
                    });
                  },
                  child: const Text("Vero"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "la risposta è sbagliata"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DiciasettesimaDomanda()));
                    });
                  },
                  child: const Text("Falso"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
