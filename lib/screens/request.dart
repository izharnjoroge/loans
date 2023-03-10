import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(RequestController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.8;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Request Loan"),
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
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: controller.loantype,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.type_specimen,
                          color: Colors.green,
                        ),
                        labelText: "Select Loan Type",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.name,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your Name",
                        hintText: "Name",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.email,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? "Enter a valid email"
                              : null,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your Email",
                        hintText: "Email",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.idnumber,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.insert_drive_file,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your ID Number",
                        hintText: "Number",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.phonenumber,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        labelText: "Enter Your Phone Number",
                        hintText: "Password",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.krapin,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        labelText: "Enter KRA Pin",
                        hintText: "Password",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: controller.amount,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.currency_exchange,
                          color: Colors.green,
                        ),
                        labelText: "Enter Amount",
                        hintText: "Amount",
                        labelStyle: TextStyle(color: Colors.green),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: width,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final requests = RequestModel(
                                  loantype: controller.loantype.text.trim(),
                                  name: controller.name.text,
                                  email: controller.email.text,
                                  idnumber: controller.idnumber.text.trim(),
                                  phonenumber:
                                      controller.phonenumber.text.trim(),
                                  krapin: controller.krapin.text.trim(),
                                  amount: controller.amount.text.trim());
                              RequestController.instance
                                  .createRequest(requests);
                            }
                            setState(() {
                              controller.name.clear();
                              controller.loantype.clear();
                              controller.email.clear();
                              controller.idnumber.clear();
                              controller.amount.clear();
                              controller.krapin.clear();
                              controller.phonenumber.clear();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            side: const BorderSide(color: Colors.black12),
                            backgroundColor: Colors.green,
                          ),
                          child: const Text("Request"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
