import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool darkMod = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMod ? Colors.grey[800] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: darkMod ? Colors.grey[800] : Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: const [
                  BoxShadow(
                      color:  Colors.grey,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ],
              ),
              child: const Icon(
                Icons.apple, 
                size: 80,
                color:    Color.fromARGB(255, 49, 46, 46),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0), 
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        darkMod = true;
                      });
                    },
                  
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black45),
                        ),

                    child: const Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                onPressed: () {
                    setState(() {
                        darkMod = false;
                      });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(223, 255, 255, 255))),
                child: const Text(
                  'light',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
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
