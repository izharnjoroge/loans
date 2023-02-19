import 'package:flutter/material.dart';
import 'package:loans/exports.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.8;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 300, 20, 200),
              child: SizedBox(
                width: width,
                child: ElevatedButton(
                    onPressed: () {
                      Auth.instance.logOut();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      side: const BorderSide(color: Colors.black12),
                      backgroundColor: Colors.green,
                    ),
                    child: Character(
                        headtext: "Log Out".toUpperCase(), fontsize: 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
