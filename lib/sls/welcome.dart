import 'package:flutter/material.dart';
import '../exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width * 0.8;
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            // Image.asset(
            //   "assets/welcome/1.jpg",
            //   height: height * 0.4,
            // ),
            const SizedBox(
              height: 20,
            ),
            (const Character(
              headtext: "Welcome",
              fontsize: 20,
            )),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const LoginScreen();
                        }));
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: Colors.green,
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
                  // Expanded(
                  //   child: ElevatedButton(
                  //       onPressed: () {
                  //         Navigator.push(context, MaterialPageRoute(
                  //             builder: (BuildContext context) {
                  //           return SignupScreen();
                  //         }));
                  //       },
                  //       style: ElevatedButton.styleFrom(
                  //         shape: const RoundedRectangleBorder(
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(20))),
                  //         side: const BorderSide(color: Colors.black12),
                  //         backgroundColor: Colors.green,
                  //       ),
                  //       child: Character(
                  //           headtext: "Signup".toUpperCase(), fontsize: 10)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
