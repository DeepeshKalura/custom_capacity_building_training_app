import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
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
                height: MediaQuery.of(context).size.height * 0.42,
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/svg/forgot_password.svg',
                  height: MediaQuery.of(context).size.height * 0.42,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  "Forgot\nPassword?",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  "Don't worry! It happens. Pease Enter the \naddress associated with your account",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 50),
                child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.alternate_email),
                      hintText: "Email ID/ Password Number",
                    ),
                    // TODO: Make a better validation
                    onSubmitted: (value) {}),
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
