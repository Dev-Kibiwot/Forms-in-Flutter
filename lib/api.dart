import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiUser extends StatefulWidget {
  const ApiUser({super.key});

  @override
  State<ApiUser> createState() => _ApiUserState();
}

class _ApiUserState extends State<ApiUser> {

  var defaultUrl ="page=1";
  List data = [];
  void fetchInfo(String dev) async{
    var url = "https://api.disneyapi.dev/characters?$dev";

    var response = await http.get(
      Uri.parse(url),
    );
    var res = jsonDecode(response.body);
    setState(() {
      data = res["data"];
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchInfo(defaultUrl);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: const Text(
          "API"
        ),
        centerTitle: true,        
        actions: [
           PopupMenuButton(
            onSelected: (value) {
              setState(() {
                defaultUrl = value;
              });
            },
            itemBuilder: (context){
             return [
              PopupMenuItem(
                value: "page=1",
                child: Text(
                  "Page1",
                  style: TextStyle(
                   color: Colors.orange[600]
                  ),
                ),
              ),
              PopupMenuItem(
                value: "page=2",
                child: Text(
                  "Page2",
                  style: TextStyle(
                   color: Colors.orange[600]
                  ),
                ),
              ),
              PopupMenuItem(
                value: "page=3",
                child: Text(
                  "Page3",
                  style: TextStyle(
                   color: Colors.orange[600]
                  ),
                ),
              ),
             ];
            }
           )
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (Context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               ListTile(
                onTap: (){
                },
                textColor: Colors.orange[900],
                leading: Container(
                  height: 80,
                  width: 80,
                  child: Image(                  
                    image: NetworkImage("${data[index]["imageUrl"]}", 
                    // scale: 1,
                    ),
                    fit: BoxFit.cover,                  
                    ),
                ),
                title: Text("${data[index]["name"]}"),
                trailing: Text("${data[index]["_id"]}"),
                shape: Border.symmetric(),
               )
              ],
            ),
          );       
        }      
      ),
      
    );
  }
}