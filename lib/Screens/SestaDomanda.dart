import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz/Screens/SettimaDomanda.dart';

class SestaDomanda extends StatefulWidget {
  const SestaDomanda({Key? key}) : super(key: key);

  @override
  State<SestaDomanda> createState() => _SestaDomandaState();
}

class _SestaDomandaState extends State<SestaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 6/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Il fiume più lungo del mondo?",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SettimaDomanda()));
                    });
                  },
                  child: const Text("Nilo"),
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const SettimaDomanda()));
                    });
                  },
                  child: const Text("Tigre"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
