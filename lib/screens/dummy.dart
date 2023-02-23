import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  final controller2 = Get.put(AgentProfile());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller2.getAgent(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            AgentModel requestData = snapshot.data as AgentModel;
            String name = requestData.name;

            return Row(
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Welcome: ${name.capitalize}",
                      textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  repeatForever: false,
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) =>
                    //           CollectionScreen(agentName: requestData),
                    //     ));
                  },
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Center(child: Text("No Network"));
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
