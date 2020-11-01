import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ForgotPassword.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'regular'
      ),
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  @override
  _loginstate createState() => _loginstate();
}

class _loginstate extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
        icon:  Icon(
            Icons.arrow_back,
          color: Colors.black,
        )
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Welcome!",
              style: TextStyle(
                fontFamily: 'regular',
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text("Log In",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 30,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text("Email",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "abc@gmail.com"

              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),

            ),
            SizedBox(height: 30,),
            Text("Password",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",

              ),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgotPassword,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 110,vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.redAccent
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,

                    ),
                  ),


                ),


              ),


            ),
            SizedBox(
              height: 10,
            ),
            Expanded(

              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blueAccent
                  ),
                  child: GestureDetector(
                    onTap: openSignuppage,
                    child: Text(

                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),


                    ),
                  ),

                ),



              ),




            )



          ],
        ),
      ),
    );
  }
  void openForgotPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
  }
  void openSignuppage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
  }
}

