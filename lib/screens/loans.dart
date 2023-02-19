import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class Loans extends StatefulWidget {
  const Loans({super.key});

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  final controller = Get.put(LoansController2());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Loan Types"),
          centerTitle: true,
          leading: const BackButton(),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(8),
              child: FutureBuilder(
                future: controller.getAllLoans(),
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
                                title: Text(
                                    "Loan Type:${snapshot.data![index].loantype}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data![index].interestrate),
                                    Text(snapshot.data![index].maximumamount),
                                    Text(snapshot.data![index].minimumamount),
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
