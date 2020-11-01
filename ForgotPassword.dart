import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'regular'
      ),
      home: forgotpassword(),
    );
  }
}
class forgotpassword extends StatefulWidget {
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
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
            Text("Forgot Password",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 40,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text("Please enter your email to get the recovery password",
              style: TextStyle(
                  fontFamily: 'regular',
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),

            Text("Enter Email",
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
            Text("Enter New Password",
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
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.redAccent
                  ),
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,

                    ),
                  ),


                ),


              ),


            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
