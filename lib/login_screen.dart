import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //TextEditingController emailController =TextEditingController(); //this used in android.
  //we needed to save TextEditingControllerValue in variable to use it in MaterialButtonWidget.
  //the declaration of variables must be in there to be seen from all class.
  var emailController = TextEditingController();
  var passController = TextEditingController();

  //const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(                                    //we need to center the Column.
              //mainAxisAlignment: MainAxisAlignment.center,      //problem#
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //tff of Email Address.
                TextFormField(
                  //controller:TextEditingController(); //but,we need save the TextEditingControllerValue in variable (emailController)
                  controller: emailController , //this att. can control and access the text in field.
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted:(value)   //value that the user input it in tff.
                  {
                    print(value);
                  },
                  onChanged: (value)
                  {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email address',
                    //hintText: 'Email address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //tff of password.
                TextFormField(
                  controller: passController,
                 // keyboardType: TextInputType.emailAddress,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText:true,
                  onFieldSubmitted:(value)   //value that the user input it in tff.
                  {
                    print(value);
                  },
                  onChanged: (value)
                  {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    //labelText: 'Email address',
                    //hintText: 'Email address',
                    labelText: 'password',
                    // prefixIcon: Icon(
                    //   Icons.email,
                    // ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye, //this icon can hide the password text.
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(     //whiteBox.
                  height: 20,
                ),
                //login btn.
                 Container(
                   width: double.infinity,
                   child: MaterialButton(
                     onPressed: (){
                       //action
                       print(emailController.text); //.text -> extract the text from anything.
                       print(passController.text);

                     },
                    child: const Text(
                      "Login",
                      // style: TextStyle(
                      // color: Colors.white,
                      // ),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //to center the Row.
                  children: [
                    const Text(
                      'Don\'t have an account?'
                    ),
                    TextButton(
                        onPressed: (){

                        },
                        child: const Text(
                            'Register now',
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}