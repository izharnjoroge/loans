import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';
import 'dummy.dart' as global;

// ignore: must_be_immutable
class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});
  // final AgentModel agentName ;
  // late String name1 = agentName.name;
  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  // late String name2;

  //  @override
  // void initState() {
  //   super.initState();
  //   name2 = widget.name1;
  // }
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(Collection1Controller());
  final controller2 = Get.put(AgentProfile2());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.8;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Collection Form"),
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
                      controller: controller.name,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.type_specimen,
                          color: Colors.green,
                        ),
                        labelText: "Group Name",
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
                      controller: controller.member1,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        labelText: "First Member",
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
                      controller: controller.amount1,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        labelText: "Amount",
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
                      controller: controller.member2,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key_off,
                          color: Colors.green,
                        ),
                        labelText: "Second Member",
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
                      controller: controller.amount2,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        labelText: "Amount",
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
                      controller: controller.member3,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        labelText: "Third Member",
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
                      controller: controller.amount3,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        labelText: "Amount",
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
                    // TextFormField(
                    //   initialValue: name2,
                    //   controller: controller.sentBy,
                    //   style: const TextStyle(color: Colors.black),
                    //   cursorColor: Colors.green,
                    //   textInputAction: TextInputAction.done,
                    //   decoration: const InputDecoration(
                    //     prefixIcon: Icon(
                    //       Icons.key,
                    //       color: Colors.green,
                    //     ),
                    //     labelText: "Amount",
                    //     labelStyle: TextStyle(color: Colors.green),
                    //     focusedBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.green),
                    //     ),
                    //     enabledBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.green),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: width,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final collections = CollectionModel(
                                name: controller.name.text,
                                member1: controller.member1.text,
                                amount1: controller.amount1.text.trim(),
                                member2: controller.member2.text.trim(),
                                amount2: controller.amount2.text.trim(),
                                member3: controller.member3.text.trim(),
                                amount3: controller.amount3.text.trim(),
                                // sentBy: controller.sentBy.text.trim(),
                              );
                              Collection1Controller.instance
                                  .createRequest(collections);
                            }
                            setState(() {
                              controller.name.clear();
                              controller.member1.clear();
                              controller.amount1.clear();
                              controller.member2.clear();
                              controller.amount2.clear();
                              controller.member3.clear();
                              controller.amount3.clear();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            side: const BorderSide(color: Colors.black12),
                            backgroundColor: Colors.green,
                          ),
                          child: const Text("Submit"),
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
