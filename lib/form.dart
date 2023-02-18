import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class reciving extends StatefulWidget {
  String name;
  reciving({super.key,required this.name});

  @override
  State<reciving> createState() => _recivingState();
}

class _recivingState extends State<reciving> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.1),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height *0.2
            ),
            child: const Text('welcome back ',
                    style: TextStyle(
                  ),
                  ),
          ),
          Text(widget.name,
          style: const TextStyle(
          ),
          )
       ] 
      )
    );    
  }      
}