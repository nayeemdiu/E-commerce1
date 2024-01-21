import 'package:ecommerce1/Auth/sign_up.dart';
import 'package:ecommerce1/Pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../Screen/navegation_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

         child: SingleChildScrollView(
           child: SafeArea(
             child: Column(
               children: [
                   SizedBox(height: 20,),
                 /// Banner Image
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset("images/img_3.png"),
                 ),
                   SizedBox(height: 50,),

                 /// Login from field
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment:CrossAxisAlignment.center,
                   children: [
                     ///email
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           labelText: "Enter Eamil",
                           border: OutlineInputBorder(),
                           prefixIcon: Icon(Icons.email),

                         ),
                       ),
                     ),
                     SizedBox(height: 10,),
                     ///password
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                         decoration: InputDecoration(
                           labelText: "Enter Password",
                           border: OutlineInputBorder(),
                           prefixIcon: Icon(Icons.lock),
                           suffixIcon: Icon(Icons.remove_red_eye),

                         ),
                       ),
                     ),
                     /// Forgot Password
                     Padding(
                       padding: const EdgeInsets.only(right: 8.0),
                       child: Align(
                         alignment: Alignment.bottomRight,
                         child: TextButton(onPressed: (){

                         }, child: Text("Forgot Password")),
                       ),
                     ),

                     SizedBox(height: 20,),
                     /// login
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(
                         onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context) => BottomNavigationBarExampleApp(),));
                         },child: Text("Login"),
                       ),
                     ),
                      SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Text("Don't Have an Account?"),
                         TextButton(onPressed: ()
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                         }, child: Text("Sign Up")),
                       ],
                     )

                   ],
                 )
               ],
             ),
           ),
         ),

    );
  }
}
