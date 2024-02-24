import 'package:flutter/material.dart';
import 'package:slicing/registerpage.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 227, 146, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140,),
            Text(
              "Login Now",
              style: TextStyle(
                fontFamily: "Ibarra",
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(26, 93, 26, 1),
              ),
            ),

            // Email dan password
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontFamily: "Ibarra",
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(26, 93, 26, 1),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromRGBO(26, 93, 26, 1),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextField(
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                 _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                        color: Color.fromRGBO(26, 93, 26, 1),
                              ),
                               onPressed: (){
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                               },),
                            labelStyle: TextStyle(
                              fontFamily: "Ibarra",
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(26, 93, 26, 1),
                            ))),
                      ),
                    )
                  ],
                )
              ],
            ),

            // button login
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                // Add any functionality or navigate to a new screen here
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(241, 201, 59, 1),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [Text(
                "Or Login With",
              style: TextStyle(
                fontFamily: "Ibarra",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(125, 119, 99, 1),
              ),)],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(300),
                backgroundColor:Color.fromRGBO(253, 244, 214, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              onPressed: () {
                // Add any functionality or navigate to a new screen here
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Icon(
                    Icons.facebook,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 10,),
                  Text("Login With Facebook",
                  style: TextStyle(
                    fontFamily: "Ibarra",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(125, 119, 99, 1)
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(300),
                backgroundColor:Color.fromRGBO(253, 244, 214, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              onPressed: () {
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Image.asset('images/google.png',
                  width: 20,
                  height: 20,
                  ),
                  SizedBox(width: 10,),
                  Text("Login With Google",
                  style: TextStyle(
                    fontFamily: "Ibarra",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(125, 119, 99, 1)
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text("Don't have an account",
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),)],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  backgroundColor: Color.fromRGBO(26, 93, 26, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Register(),
                )
                );
              },
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontFamily: "Ibarra",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(241, 201, 59, 1),
                ),
              ),
            ),
          ],
        ),
        )
      ),
    );
}
}
