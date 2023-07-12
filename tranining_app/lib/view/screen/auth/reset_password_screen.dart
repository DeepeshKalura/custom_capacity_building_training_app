import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _key = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(229, 238, 243, 1),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/svg/password.svg',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  "Reset\nPassword?",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Form(
                key: _key,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _newPasswordController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: "New Password",
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
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: "Confirm Password",
                        ),
                        // TODO: Make a better validation
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
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
                  top: 20,
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
                  child: const Text("Sumbit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
