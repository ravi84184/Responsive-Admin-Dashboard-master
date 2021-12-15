import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Orders",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    "Add Order",
                    style: TextStyle(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: appPadding,
            ),
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(4),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  children: [
                    _tableHeader("No"),
                    _tableHeader("Company Name"),
                    _tableHeader("Owner Name"),
                    _tableHeader("Order"),
                    _tableHeader("Action"),
                  ],
                ),
                for (var model in [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18
                ])
                  TableRow(
                    children: [
                      _tableBody("$model"),
                      _tableBody("Company Name"),
                      _tableBody("Owner Name"),
                      _tableBody("Order"),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.delete),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _tableHeader(String title) {
    return Container(
      color: Colors.grey.shade50,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  _tableBody(String title) {
    return Container(
      color: Colors.grey.shade50,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(),
      ),
    );
  }
}
