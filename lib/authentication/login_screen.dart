import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                 children: [
                const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo.png", height: 100),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(height: 5, thickness: 2, color: Colors.white,),
            const SizedBox(height: 50),
            const Text("Login as a Driver",style: TextStyle(
              fontSize: 26,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            ),
                   TextField(
                     controller: emailTextEditingController,
                     keyboardType: TextInputType.emailAddress,
                     style: const TextStyle(
                       color: Colors.grey,
                     ),
                     decoration: const InputDecoration(
                         labelText: "Email",
                         hintText: "Email",
                         enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.grey,
                             )
                         ),
                         focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.grey,

                             )
                         ),
                         hintStyle: TextStyle(
                           color: Colors.grey,
                           fontSize: 10,
                         ),
                         labelStyle: TextStyle(
                           color: Colors.grey,
                           fontSize: 14,
                         )
                     ),
                   ),
                   TextField(
                     controller: passwordTextEditingController,
                     keyboardType: TextInputType.text,
                     obscureText: true,
                     style: const TextStyle(
                       color: Colors.grey,
                     ),
                     decoration: const InputDecoration(
                         labelText: "Password",
                         hintText: "Password",
                         enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.grey,
                             )
                         ),
                         focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.grey,

                             )
                         ),
                         hintStyle: TextStyle(
                           color: Colors.grey,
                           fontSize: 10,
                         ),
                         labelStyle: TextStyle(
                           color: Colors.grey,
                           fontSize: 14,
                         )
                     ),
                   ),
                   const SizedBox(height: 20),
                   ElevatedButton(onPressed: (){

                     //Todo
                   },

                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.lightGreenAccent,
                       ),
                       child: const Text(
                         "Login",
                         style: TextStyle(
                           color: Colors.black54,
                           fontSize: 18,
                         ),
                       )),
                   TextButton(
                       onPressed: ()
                       {
                         Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
                       },
                       child: const Text(
                     "Do not have an Account? SignUp Here",
                     style: TextStyle(color: Colors.grey),
                   ))
                 ],
            ),
          ),
        ),
      ),
    );
  }
}

