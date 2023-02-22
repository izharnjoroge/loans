import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/auth/requestmodel.dart';

class CustomerDetails extends StatelessWidget {
  CustomerDetails({super.key, required this.requestModel});
  final RequestModel requestModel;

  final controller = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(requestModel.name),
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
                    initialValue: requestModel.name,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Name",
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
                    initialValue: requestModel.email,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Email",
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
                    initialValue: requestModel.idnumber,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Id Number",
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
                    initialValue: requestModel.phonenumber,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Phone Number",
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
                    initialValue: requestModel.krapin,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    textInputAction: TextInputAction.next,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Kra Pin",
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
                    initialValue: requestModel.amount,
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
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
