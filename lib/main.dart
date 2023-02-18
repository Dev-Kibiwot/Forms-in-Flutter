import 'package:api/api.dart';
import 'package:api/class/log_in.dart';
import 'package:api/class/regest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(    
   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(        
        body: RegestForm(),
      ),
    )
  );
}

