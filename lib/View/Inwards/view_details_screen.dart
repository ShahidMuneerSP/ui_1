import 'package:flutter/material.dart';
import 'package:task_1/constants/const.dart';

import '../widgets/appbar_widget.dart';
import 'add_to_bin_screen.dart';

class ViewDetailsScreen extends StatelessWidget {
  const ViewDetailsScreen({Key? key}) : super(key: key);

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
          body: ListView(scrollDirection: Axis.vertical, children: [
            KHight20,
            Row(
              children: const [
                KWidth50,
                Text(
                  "ASA-01-02  Shipment Details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 40, 79, 112),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 580,
                width: size.width,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 169, 201, 227),
                    borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Table(
                      border: TableBorder.symmetric(
                        outside: BorderSide.none,
                        inside: const BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid),
                      ),
                      columnWidths: const {
                        0: FractionColumnWidth(0.2),
                        1: FractionColumnWidth(0.2),
                        2: FractionColumnWidth(0.2),
                        3: FractionColumnWidth(0.2),
                        4: FractionColumnWidth(0.2),
                      },
                      children: [
                        tableHeading(),
                        TableProduct(context, "PEPSI", "Chiller", "300", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin"),
                        TableProduct(context, "FANTA", "Chiller", "400", "CTN",
                            "Add To Bin")
                      ]),
                ),
              ),
            )
          ])),
    );
  }

  TableRow TableProduct(BuildContext context, String item, String productType,
      String expectedQuantity, String uom, String title) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          item,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          productType,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          expectedQuantity,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          uom,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddToBinScreen()));
        },
        child: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.blue),
          child: Center(
            child: Text(title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ),
      ),
    ]);
  }

  TableRow tableHeading() {
    return const TableRow(children: [
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          "ITEM",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text("Product Type",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text("Expected Quantity",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: EdgeInsets.all(5.0),
        child: Text("UOM",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
      Text(
        "",
      )
    ]);
  }
}
