import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz/Screens/SestaDomanda.dart';

class QuintaDomanda extends StatefulWidget {
  const QuintaDomanda({Key? key}) : super(key: key);

  @override
  State<QuintaDomanda> createState() => _QuintaDomandaState();
}

class _QuintaDomandaState extends State<QuintaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 5/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Dov'è il posto naturale più basso del pianeta Terra?",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SestaDomanda()));
                    });
                  },
                  child: const Text("Fossa delle Marianne"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SestaDomanda()));
                    });
                  },
                  child: const Text("Fossa delle Sandwich Australi"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
