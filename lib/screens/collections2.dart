import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class CollectionsView2 extends StatelessWidget {
  CollectionsView2({super.key, required this.collectionModel});
  final CollectionModel collectionModel;
  final controller = Get.put(CollectionController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(collectionModel.name),
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
                    initialValue: collectionModel.member1,
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
                    initialValue: collectionModel.amount1,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Amount",
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
                    initialValue: collectionModel.member2,
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
                    initialValue: collectionModel.amount2,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Amount",
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
                    initialValue: collectionModel.member3,
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
                    initialValue: collectionModel.amount3,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Amount",
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
                    initialValue: collectionModel.sentBy,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Agent",
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
