import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screens/DodicesimaDomanda.dart';

class UndicesimaDomanda extends StatefulWidget {
  const UndicesimaDomanda({Key? key}) : super(key: key);

  @override
  State<UndicesimaDomanda> createState() => _UndicesimaDomandaState();
}

class _UndicesimaDomandaState extends State<UndicesimaDomanda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: const Text("domanda 11/17"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text("Quando è stata fondata Netflix?",
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
                        content: Text("la risposta è sbagliato, LA PROSSIMA DOMANDA E' COL TEMPO"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DodicesimaDomanda()));
                    });
                  },
                  child: const Text("2015"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è sbagliata, LA PROSSIMA DOMANDA E' COL TEMPO"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DodicesimaDomanda()));
                    });
                  },
                  child: const Text("2009"),
                ),
              ],
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
                        content: Text("la risposta è giusta, LA PROSSIMA DOMANDA E' COL TEMPO"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DodicesimaDomanda()));
                    });
                  },
                  child: const Text("1997"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("la risposta è sbagliata, LA PROSSIMA DOMANDA E' COL TEMPO"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 3), (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DodicesimaDomanda()));
                    });
                  },
                  child: const Text("2001"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
