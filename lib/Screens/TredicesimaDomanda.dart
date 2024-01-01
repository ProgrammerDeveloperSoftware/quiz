import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/PrimaDomanda.dart';
import 'package:quiz/Screens/QuattordicesimaDomanda.dart';

class TredicesimaDomanda extends StatefulWidget {
  const TredicesimaDomanda({Key? key}) : super(key: key);

  @override
  State<TredicesimaDomanda> createState() => _TredicesimaDomandaState();
}

class _TredicesimaDomandaState extends State<TredicesimaDomanda> {

  int count = 10;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (count > 0) {
          count--;
        } else if(count == 0 ){
          Navigator.push(context, MaterialPageRoute(builder: (count) => const PrimaDomanda()));
          timer.cancel();
        }else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 13/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 125),
            child: Text(count.toString(),
              style: const TextStyle(
                fontSize: 27,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "L'ornitorinco depone le uova?",
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
                            "la risposta è sbagliato"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    timer?.cancel();
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuattordicesimaDomanda()));
                    });
                  },
                  child: const Text("Falso"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "la risposta è giusta"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    timer?.cancel();
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuattordicesimaDomanda()));
                    });
                  },
                  child: const Text("Vero"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
