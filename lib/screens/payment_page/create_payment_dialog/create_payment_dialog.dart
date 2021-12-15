import 'package:flutter/material.dart';

class CreatePaymentDialog extends StatefulWidget {
  const CreatePaymentDialog({Key? key}) : super(key: key);

  @override
  _CreatePaymentDialogState createState() => _CreatePaymentDialogState();
}

class _CreatePaymentDialogState extends State<CreatePaymentDialog> {
  TextEditingController _companyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add order"),
        centerTitle: false,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Company Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Expanded(child: _textFormField(hint: "Name")),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: _textFormField(hint: "Mobile")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _textFormField(hint: "Email")),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: _textFormField(hint: "Address")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Owner Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Expanded(child: _textFormField(hint: "Name")),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: _textFormField(hint: "Mobile")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _textFormField(hint: "Email")),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: _textFormField(hint: "Address")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFormField({required String hint}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
