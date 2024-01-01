import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/PrimaDomanda.dart';
import 'package:quiz/Screens/QuindicesimaDomanda.dart';

class QuattordicesimaDomanda extends StatefulWidget {
  const QuattordicesimaDomanda({Key? key}) : super(key: key);

  @override
  State<QuattordicesimaDomanda> createState() => _QuattordicesimaDomandaState();
}

class _QuattordicesimaDomandaState extends State<QuattordicesimaDomanda> {

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
        title: const Text("domanda 14/17"),
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
              "La citta natale di Giuseppe Caribaldi è Nizza?",
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
                    timer?.cancel();
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuindicesimaDomanda()));
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
                    timer?.cancel();
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuindicesimaDomanda()));
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
