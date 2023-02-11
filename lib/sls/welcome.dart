import 'package:flutter/material.dart';
import '../exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset(
            //   "profile1.png",
            //   height: height * 0.6,
            // ),
            Container(
              color: Colors.white10,
              height: height * 0.6,
            ),
            (const Character(
              headtext: "Welcome",
              fontsize: 20,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const LoginScreen();
                        }));
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      child: Character(
                        headtext: "Login".toUpperCase(),
                        fontsize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const SignupScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          side: const BorderSide(color: Colors.black12),
                        ),
                        child: Character(
                            headtext: "Signup".toUpperCase(), fontsize: 10)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
