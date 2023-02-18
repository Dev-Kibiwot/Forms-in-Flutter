import 'package:api/contacts/mydata.dart';
import 'package:api/contacts/recever.dart';
import 'package:flutter/material.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.black,
        title: const Text("Contacts",
        style: TextStyle(
          fontSize: 30,          
        ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){},
              child: const Icon(
                Icons.search
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ...List.generate(
            myData.length, 
            (index) => ListTile(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => Recever(name: myData[index])
                  ),
                );
              },
              leading: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.person),
             ),
             title: Text(myData[index]),
             subtitle: const Text("0740025607"),
             trailing: const Icon(
              Icons.more_horiz
              ),
            )
          ),
        ],
      ),
    );
  }
}