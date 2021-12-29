import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/screens/company_page/controller/company_controller.dart';

import 'create_company_dialog/create_company_dialog.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<CompanyController>(context, listen: false)
          .getCompanyList(context);
    });
  }

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
                  "Company",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    if (Responsive.isMobile(context)) {
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: CreateCompanyDialog(),
                            );
                          });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      "Add Customer",
                      style: TextStyle(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: appPadding,
            ),
            Consumer<CompanyController>(builder: (context, data, child) {
              return Table(
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
                      _tableHeader("Address"),
                      _tableHeader("Action"),
                    ],
                  ),
                  if (data.companyList != null)
                    for (var model in data.companyList!)
                      TableRow(
                        children: [
                          _tableBody("$model"),
                          _tableBody("${model.companyName}"),
                          _tableBody("${model.ownerName}"),
                          _tableBody("${model.companyAddress}"),
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
              );
            }),
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