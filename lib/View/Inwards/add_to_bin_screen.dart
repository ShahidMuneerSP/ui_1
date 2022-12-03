import 'package:flutter/material.dart';
import 'package:task_1/constants/const.dart';

import '../widgets/appbar_widget.dart';

class AddToBinScreen extends StatelessWidget {
  const AddToBinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'LOGO',
            )),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            height: 630,
            width: size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 169, 201, 227),
                borderRadius: BorderRadius.circular(15)),
            child: ListView(
              children: [
                KHight20,
                Row(
                  children: const [
                    KWidth34,
                    Text(
                      "ITEM: PEPSI",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    KWidth34,
                    Text("Product Type:Chiller",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                KHight20,
                Row(
                  children: const [
                    KWidth34,
                    Text(
                      "UOM: CTN",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    KWidth40,
                    Text("Expected Quantity:300",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                KHight30,
                Row(
                  children: [
                    KWidth34,
                    const Text(
                      "WAREHOUSE:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    KWidth,
                    SizedBox(
                      height: 40,
                      width: 180,
                      child: Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    )
                  ],
                ),
                KHight20,
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 109, 177),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "New Bin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                    KWidth30,
                  ],
                ),
                KHight20,
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    height: 370,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 25, 109, 177),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KHight20,
                        Row(
                          children: [
                            KWidth30,
                            const Text(
                              "BIN(Pallet):",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 42,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 170,
                                color: Colors.white,
                                child: const Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        KHight,
                        Row(
                          children: [
                            const Text(
                              "Quantity Per Pallet:",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            KWidth,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 170,
                                color: Colors.white,
                                child: const Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        KHight,
                        Row(
                          children: [
                            KWidth,
                            const Text(
                              "Actual Pallet:",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 47,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 170,
                                color: Colors.white,
                                child: const Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        KHight,
                        Row(
                          children: [
                            const Text(
                              "Chargeable Pallet:",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 170,
                                color: Colors.white,
                                child: const Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        KHight,
                        Row(
                          children: [
                            const SizedBox(
                              width: 43,
                            ),
                            const Text(
                              "Batch No:",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 37,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 40,
                                width: 170,
                                color: Colors.white,
                                child: const Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        KHight,
                        Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: const Icon(Icons.qr_code, size: 35),
                            ),
                            const Text("Scan QR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
