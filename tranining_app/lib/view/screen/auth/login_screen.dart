import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.42,
                child: Image.asset(
                  "assets/illustration/login.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text("Login"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: "Email ID",
                        ),
                        // TODO: Make a better validation
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          // icon: Icon(Icons.lock),

                          suffix: TextButton(
                            child: const Text(
                              "Forgot Password?",
                            ),
                            onPressed: () {},
                          ),
                          hintText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 10,
                  right: 20,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50),
                  ),
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 20),
                  child: Text("Or, Login With"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 60),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset(
                          "assets/svg/google.svg",
                          width: 40,
                          height: 40,
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                          side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 60),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset(
                          "assets/svg/facebook.svg",
                          width: 40,
                          height: 40,
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                          side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 60),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white70,
                          ),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset(
                          "assets/svg/microsoft.svg",
                          width: 40,
                          height: 40,
                        )),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          onEnter: (event) {
                            // TOTO: Check it and also can be use as function
                          },
                          text: "Sign Up",
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
