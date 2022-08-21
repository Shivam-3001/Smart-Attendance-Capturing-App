import 'package:flutter/material.dart';
import 'package:smart_attendance/screen/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text("Smart Attendance"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    // width: 200,
                    // height: 150,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        // image: Image.asset("assets/images/businessman.png"),
                        // borderRadius: BorderRadius.circular(50.0)
                        ),
                    child: Image.asset('assets/images/businessman.png',
                    // scale: 1.0,
                      width: 100,
                      height: 100,
                    )
                    // child: Text('Yaha logo Lagna hai ')
                    ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Employee ID',
                    hintText: 'Enter Valid Employee ID as AB1250'),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 15.0, right: 15.0, top: 15, bottom: 0),
            //   // padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(
            //     obscureText: true,
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'Password',
            //         hintText: 'Enter Your Password'),
            //   ),
            // ),
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Get Your Employee ID Here !!',
                style: TextStyle(color: Colors.purple[300], fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.purple[300], borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Text('New User? Create Account'),
            SizedBox(
              height: 20,
            ),
            Text('Version 1.0')
          ],
        ),
      ),
    );
  }
}
