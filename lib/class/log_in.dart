import 'package:api/class/regest.dart';
import 'package:api/form.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
   LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [            
              Colors.green.shade300,
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
                  const SizedBox(height: 5),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(
                      controller: username,
                      validator: (value){
                        return value!.isEmpty ? "Input field required" : null;
                      },
                      keyboardType: TextInputType.name,
                      decoration:   InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: (){
                            username.clear();
                          },
                         icon: Icon(Icons.clear)
                         ),
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
                  const SizedBox(height: 15),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2
                    ),
                    child: TextFormField(
                      validator: (value) {
                        return (value! .isEmpty)? "Input field required" : null;
                      },
                      keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.35
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){   
                          Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => reciving(name: username.text)
                          )
                        );                       
                        }
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                      ),
                      child: const Text(
                        "LOG IN",
                       style:  TextStyle(
                        color: Colors.black,
                       ),
                      )
                      ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                   Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        "Forgot your password?",
                       style: TextStyle(
                        color: Colors.white
                       ),
                      ),
                    )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                         MaterialPageRoute(
                          builder: (context) => RegestForm(),
                          ),
                        );
                    },                      
                    child: const Text(
                      "SIGN UP",
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