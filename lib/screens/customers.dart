import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  final controller = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Customers"),
          centerTitle: true,
          leading: const BackButton(),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(8),
              child: FutureBuilder(
                future: controller.getAllRequests(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                iconColor: Colors.green,
                                tileColor: Colors.green.withOpacity(0.1),
                                leading: const Icon(Icons.person),
                                title:
                                    Text("Name:${snapshot.data![index].name}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data![index].phonenumber),
                                    Text(snapshot.data![index].amount),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else {
                      return const Center(
                        child: Text("Something went wrong"),
                      );
                    }
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )),
        ),
      ),
    );
  }
}
