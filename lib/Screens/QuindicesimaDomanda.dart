import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/PrimaDomanda.dart';
import 'package:quiz/Screens/SedicesimaDomanda.dart';

class QuindicesimaDomanda extends StatefulWidget {
  const QuindicesimaDomanda({Key? key}) : super(key: key);

  @override
  State<QuindicesimaDomanda> createState() => _QuindicesimaDomandaState();
}

class _QuindicesimaDomandaState extends State<QuindicesimaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 15/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Il compito delle piastrine nel corpo umano, è\n quello di combattere le infezioni?",
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
                            "la risposta è sbagliata"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SedicesimaDomanda()));
                    });
                  },
                  child: const Text("Vero"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "la risposta è giusta, è il compito dei globuli bianchi"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SedicesimaDomanda()));
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
