import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Sign In',
    home: myApp(),
  ));
}

class myApp extends StatefulWidget
{
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
    String strUserName = "";
  @override 
  Widget build(BuildContext context)
  {
    //  return Scaffold
     
    //  (
    //    appBar: AppBar
    //    (
    //      title: Text("Log In"),
    //    ),
    //    //body: Container(child: Text("ffg"),)
    //   //  body: Center(
    //   //   child: Container(
    //   //     child: Text("Welcome to days days of flutter by name"),
    //   //   ),
    //   // ),   
    //    body:SingleChildScrollView(
    //      child: Column(
    //           children: [
    //             TextFormField : (),

    //             Image.asset('assets/images/login.png',fit: BoxFit.cover,),
    //             SizedBox(height: 10,),
    //             Center(
    //               child: Text("Please Sign in Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    //               ),
    //             SizedBox(height: 10,),
              
    //           ],
    //           //  child:Column(
    //           //     children: [
    //           //       TextFormField(
    //           //         hintText : "Enter UserName",
    //           //         labelText : "Username"
    //           //       ),
    //           //     ]
    //           //   )
    //      ),
    //    ),
       
      
       
    //  );
    return Material(
      color: Colors.white,
      child: SingleChildScrollView 
      (
        child: Column(
            children: [
              const SizedBox(height: 30,),
              const Center(
                child: Text("Sign In",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)
              ),
              //const SizedBox(height: 5,),
              Image.asset("assets/images/login.png",fit: BoxFit.cover,),
              Center(child: Container(height: 30,child: Text("Welcome $strUserName", style: const TextStyle(fontWeight: FontWeight.bold,fontSize : 21),),)),
              //const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 50.0, vertical : 10.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "UserName", hintText: "Enter User Name",focusColor: Colors.blue
                      ),
                      onChanged : (String str)
                      {
                         strUserName = str;
                         setState(() {
                           
                         });
                         
                      }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password", hintText: "Enter Password",focusColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              //const SizedBox(height: 2,),
              TextButton(
                child: const Text("Forgot Password ?",style: TextStyle(fontSize: 13,color: Colors.blue),),
                onPressed: () { },
              ),
              const Padding(padding: EdgeInsets.only(left: 110),),
              SizedBox(
                width: 130,
                child: ElevatedButton(
                   child: const Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                  onPressed: () { },
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 25),
                child:   Text("Or via social media",style: TextStyle(fontSize: 15),),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox( width: 120,),
                  Image.asset("assets/images/fb.png",height: 40,width: 80,),
                  Image.asset("assets/images/google.png",height: 45,width: 40,),
                  //Image.asset("assets/images/linkdein.png",height: 40,),
                ],
              ),
              const SizedBox(height: 80,),
              SizedBox(
                width: 220,
                child: Row(
                  children: [
                    const Text("Don't have an Account?",),
                    TextButton(onPressed: () {}, child: const Text("Register"))
                  ],
                ),
              )

            ],
        ),

      )
    );
     
  }
}