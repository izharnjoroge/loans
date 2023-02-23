import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loans/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller2 = Get.put(AgentProfile());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.05;
    var height2 = MediaQuery.of(context).size.height * 0.05;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
            ),
            FutureBuilder(
              future: controller2.getAgent(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    AgentModel requestData = snapshot.data as AgentModel;
                    return Row(
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              "Welcome: ${requestData.name.capitalize}",
                              textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                          repeatForever: false,
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
            ),
            SizedBox(
              height: height2,
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.75,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Loans();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.safety_check,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Types Of Loans",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Request();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.safety_check,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Loan Requests",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const CollectionsView();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.safety_check,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Collections",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const GroupView();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.safety_check,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Groups",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Customer();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.safety_check,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Customers",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



//             const SizedBox(
//               height: 50,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 40),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (BuildContext context) {
//                     return const Customer();
//                   }));
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
//                   height: height3,
//                   width: width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Colors.black,
//                         spreadRadius: 1,
//                         blurRadius: 8,
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                   ),
//                   child: Row(
//                     children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Customers",
//                           style: GoogleFonts.nunitoSans(
//                             textStyle: const TextStyle(
//                                 color: Colors.black45,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 40),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (BuildContext context) {
//                     return const GroupView();
//                   }));
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
//                   height: height3,
//                   width: width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Colors.black,
//                         spreadRadius: 1,
//                         blurRadius: 8,
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                   ),
//                   child: Row(
//                     children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Groups",
//                           style: GoogleFonts.nunitoSans(
//                             textStyle: const TextStyle(
//                                 color: Colors.black45,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
