import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'regular'
      ),

      home: signuppage(),
    );
  }
}
class signuppage extends StatefulWidget {
  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
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
            SizedBox(height: 10,),
            Text("Sign Up",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 30,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text("Enter User Name",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Raihan Nahar"
              ),
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),

            ),
            SizedBox(height: 15,),
            Text("Enter Email",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "abc@gmail.com"
              ),
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),

            ),
            SizedBox(height: 15,),
            Text("Password",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",

              ),
              style: TextStyle(

                  fontSize: 15,
                  color: Colors.black
              ),

            ),
            SizedBox(height: 15,),
            Text("Confirm Password",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Confirm Your Password",

              ),
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            SizedBox(
              height: 20,
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


            )



          ],
        ),
      ),

    );
  }
}

