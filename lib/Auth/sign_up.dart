import 'package:ecommerce1/Auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Material(

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
              SizedBox(height: 30,),

              /// Login from field
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  ///name
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),

                      ),
                    ),
                  ),
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
                  ///number
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Number",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.numbers),

                      ),
                    ),
                  ),
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
                  /// confrom password
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Confrim Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),

                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  ///  sign up
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },child: Text("Crete Account"),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Don't Have an Account?"),
                      TextButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
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
