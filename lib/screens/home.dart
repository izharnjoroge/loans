import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loans/exports.dart';
import 'package:loans/screens/collections1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(AgentProfile());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.8;
    var height = MediaQuery.of(context).size.height * 0.05;
    var height2 = MediaQuery.of(context).size.height * 0.05;
    var height3 = MediaQuery.of(context).size.height * 0.1;

    return SafeArea(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: FutureBuilder(
                future: controller.getAgent(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      AgentModel requestData = snapshot.data as AgentModel;
                      return Row(
                        children: [
                          Text(
                            "Welcome: ${requestData.name.capitalize}",
                            style: GoogleFonts.nunitoSans(
                              textStyle: const TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
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
            ),
            SizedBox(
              height: height2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Loans();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: height3,
                  width: width,
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
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Types Of Loans",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Request();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: height3,
                  width: width,
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
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Loan Requests",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const CollectionsView();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: height3,
                  width: width,
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
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Collections",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Customer();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: height3,
                  width: width,
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
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Customers",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const GroupView();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  height: height3,
                  width: width,
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
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Groups",
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                                color: Colors.black45,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
