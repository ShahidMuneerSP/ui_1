import 'package:flutter/material.dart';
import 'package:task_1/View/Inwards/view_details_screen.dart';

import '../widgets/appbar_widget.dart';

class ScreenInwards extends StatelessWidget {
  const ScreenInwards({Key? key}) : super(key: key);

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
                      0: FractionColumnWidth(0.4),
                      1: FractionColumnWidth(0.3),
                      2: FractionColumnWidth(0.3),
                    },
                    children: [
                      tableHeading(),
                      TableRow(children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "ASA-01-02",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "16-09-22",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewDetailsScreen()));
                          },
                          child: const Text("View Details",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 74, 120, 157),
                              )),
                        ),
                      ]),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", ""),
                      tableText("", "", "")
                    ]),
              ),
            ),
          )),
    );
  }

  TableRow tableHeading() {
    return const TableRow(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "ASN Number",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Expected Date",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      ),
      Text("")
    ]);
  }

  TableRow tableText(String title, String date, String buttonTitle) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          date,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(buttonTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 74, 120, 157),
            )),
      ),
    ]);
  }
}
