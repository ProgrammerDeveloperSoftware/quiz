import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz/Screens/QuartaDomanda.dart';

class TerzaDomanda extends StatefulWidget {
  const TerzaDomanda({Key? key}) : super(key: key);

  @override
  State<TerzaDomanda> createState() => _TerzaDomandaState();
}

class _TerzaDomandaState extends State<TerzaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 3/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Quanti Stati ci sono negli Stati Uniti?",
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
                        content: Text("la risposta è sbagliata"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuartaDomanda()));
                    });
                  },
                  child: const Text("> 50"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è giusta"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuartaDomanda()));
                    });
                  },
                  child: const Text("50"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QuartaDomanda()));
                    });
                  },
                  child: const Text("< 50"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
