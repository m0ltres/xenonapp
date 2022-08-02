import 'package:flutter/material.dart';
import 'package:xenonapp/components/rounded_button.dart';
import 'package:xenonapp/screens/home/home_screen.dart';
import 'package:xenonapp/screens/signup/signup_screen.dart';
import 'package:xenonapp/services/auth_response.dart';
import 'package:xenonapp/services/authentication_service.dart';
import 'package:xenonapp/utils/util.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController pwdEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Sign In",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  controller: emailEditingController,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      fillColor: Colors.grey[300]),
                  //Lets apply validation
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: pwdEditingController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      fillColor: Colors.grey[300]),
                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        //Forgot password screen here
                       
                      },
                      child: const Text("Forgot Password?"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedButton(
                    label: "LOGIN",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        
                        AuthenticationService()
                            .signInWithEmail(
                                email: emailEditingController.text,
                                password: pwdEditingController.text)
                            .then((authResponse) {
                          if (authResponse.authStatus == AuthStatus.success) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                (route) => false);
                          } else {
                            //error message 
                            Util.showErrorMessage(
                                context, authResponse.message);
                          }
                        });
                      }
                    })
              ])),
          const SizedBox(
            height: 10,
          ),
         
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? "),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                      (route) => false);
                },
                child: const Text("Sign Up",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}
