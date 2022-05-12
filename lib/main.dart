import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
            child: Column(
              children: [
                Container(
                      height: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(

                          bottomLeft: Radius.circular(200.0),
                        ),
                        color: Colors.grey,
                      ),child: Center(
                  child: Icon(Icons.supervised_user_circle,color: Colors.black,size: 130,),
                ),

                ),
               SizedBox(height: 20,),
                Text("LOGIN",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                Padding(padding: EdgeInsets.all( 20),
                    child:TextFormField(


                      decoration: InputDecoration(
                        hintText: "EMAIL",
                        label: Text("Email:"),
                        prefixIcon: Icon(Icons.key),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),


                      ),

                    )),
               SizedBox(height: 10,),
                Padding(padding: EdgeInsets.all( 20),
                    child:TextFormField(
                      obscureText: true,


                      decoration: InputDecoration(

                        hintText: "PASSWORD",
                        label: Text("PASSWORD:"),
                        prefixIcon: Icon(Icons.key),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),


                      ),

                    )),
               SizedBox(height: 30,),
                Padding(padding: EdgeInsets.all(50),

                    child: Container(
                      height: 50,
                      width: 550,

                      child:  RaisedButton(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), ),

                        color: Colors.grey,
                        onPressed:  (){




                        }, child:  Text("LOGIN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),),
                    ),




                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(text: ' REGISTER NOW',
                                  style: TextStyle(
                                      color: Colors.blueAccent, fontSize: 18),




                              )
                            ]
                        ),
                      ),
                    )
                )

               /* Expanded(
                    child: Container(
                      height: 1/5,
                      color: Colors.grey,

                )),*/
              ],
            )
        ),
      ),
    );
  }
}
