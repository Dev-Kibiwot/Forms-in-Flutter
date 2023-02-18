import 'package:api/class/log_in.dart';
import 'package:flutter/material.dart';

class RegestForm extends StatefulWidget {
  const RegestForm({super.key});

  @override
  State<RegestForm> createState() => _RegestFormState();
}

class _RegestFormState extends State<RegestForm> {  
  GlobalKey<FormState> formKey = GlobalKey();
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [            
              Colors.green.shade200,
              Colors.black54,
            ]
          ),
        ),
      child: Padding(
        padding:  EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1
        ),
        child: Form(
          key: formKey,
              child: ListView(
                children: [
                  Container(
                    height: 90,
                    width: 90,                    
                    child: Image.asset("assets/R.png",
                    ),                    
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child:  Text(
                      "Create Your Account",
                     style:TextStyle(
                      color: Colors.white,
                      fontSize: 20
                     ) ,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(    
                      validator: (value) {
                        return value !.isEmpty ? "Input field required":null;
                      },                  
                      keyboardType: TextInputType.name,
                      decoration:  const InputDecoration(                        
                        hintText: ("Username"),
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),                        
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(
                      validator: (value) {
                        return value !.isEmpty ? "Input field required":null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration:  const InputDecoration(
                        hintText: ("E-mail"),
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        icon: Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(
                      validator: (value) {
                        return value !.isEmpty ? "Input field required":null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration:  const InputDecoration(
                        hintText: ("Password"),
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,                          
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(
                      validator: (value) {
                        return value !.isEmpty ? "Input field required":null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration:  const InputDecoration(
                        hintText: ("Confirm password"),                        
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.35
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){                          
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,                        
                      ),
                      child: Text(
                        "SIGN UP",
                       style: TextStyle(
                        color: Colors.black
                       ),
                      )
                      ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=> LogIn())
                        );
                    },                      
                    child: Text(
                      "LOG IN",
                     style: TextStyle(
                      color: Colors.white
                     ),
                    )
                    )
                ],
              )
            ),
      ),
      ),
    );
  }
}