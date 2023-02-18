import 'package:flutter/material.dart';

class Recever extends StatefulWidget {
  String name;
  Recever({super.key, required this.name});

  @override
  State<Recever> createState() => _ReceverState();
}

class _ReceverState extends State<Recever> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1
          ),
          const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            )
          ),
          const SizedBox(height: 15),
          Text(widget.name),
          const SizedBox(height: 15),
          const Text("0740025607"),
          const SizedBox(height: 15),
          const Text("mutaitech@gmail.com"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2
            ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25,
            ),
            child: TextButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  const [
                  Text(
                    "Call",
                  style: TextStyle(
                    color: Colors.white
                   ),
                  ),
                  Icon(Icons.call,
                  color: Colors.white,
                  ),
                ],
               ),
            ),
          )
        ],
      ),
    );
  }
}