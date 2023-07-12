import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstOtpNumberController = TextEditingController();
  final _secondOtpNumberController = TextEditingController();
  final _thirdOtpNumberController = TextEditingController();
  final _fourthOtpNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstOtpNumberController.dispose();
    _secondOtpNumberController.dispose();
    _thirdOtpNumberController.dispose();
    _fourthOtpNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'assets/svg/otp.svg',
                height: MediaQuery.of(context).size.height * 0.42,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                "Enter OTP",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
                right: 30,
              ),
              child: Text(
                "An 4 digit has been sent to your email. Please enter the code",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 10,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(_firstOtpNumberController, true),
                    const SizedBox(
                      width: 10.0,
                    ),
                    OtpInput(_secondOtpNumberController, false),
                    const SizedBox(
                      width: 10.0,
                    ),
                    OtpInput(_thirdOtpNumberController, false),
                    const SizedBox(
                      width: 10.0,
                    ),
                    OtpInput(_fourthOtpNumberController, false),
                    const SizedBox(
                      width: 10.0,
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
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
                ),
                onPressed: () {},
                child: const Text("Sumbit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
