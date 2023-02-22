import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';
import 'package:loans/screens/collection.dart';

class GroupView2 extends StatelessWidget {
  GroupView2({super.key, required this.groupModel});
  final GroupModel groupModel;
  final controller = Get.put(GroupController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(groupModel.name),
          titleTextStyle:
              const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: const BackButton(),
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Add ',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const CollectionScreen();
                }));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    initialValue: groupModel.member1,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Member",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    initialValue: groupModel.member2,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Member",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    initialValue: groupModel.member3,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Member",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    initialValue: groupModel.amount,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Initial Amount",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    initialValue: groupModel.interest,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Interest",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    initialValue: groupModel.finalAmount,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Final Amount",
                      labelStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
