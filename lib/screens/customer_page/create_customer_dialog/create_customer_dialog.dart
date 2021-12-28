import 'package:flutter/material.dart';

class CreateCustomerDialog extends StatefulWidget {
  const CreateCustomerDialog({Key? key}) : super(key: key);

  @override
  _CreateCustomerDialogState createState() => _CreateCustomerDialogState();
}

class _CreateCustomerDialogState extends State<CreateCustomerDialog> {
  TextEditingController _companyController = TextEditingController();
  TextEditingController _companyMobileController = TextEditingController();
  TextEditingController _companyEmailController = TextEditingController();
  TextEditingController _companyAddressController = TextEditingController();
  TextEditingController _customerNameController = TextEditingController();
  TextEditingController _customerMobileController = TextEditingController();
  TextEditingController _customerEmailController = TextEditingController();
  TextEditingController _customerAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add customer"),
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
                  Expanded(
                    child: _textFormField(
                      hint: "Name",
                      controller: _companyController,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: _textFormField(
                    hint: "Mobile",
                    controller: _companyMobileController,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: _textFormField(
                    hint: "Email",
                    controller: _companyEmailController,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: _textFormField(
                    hint: "Address",
                    controller: _companyAddressController,
                  )),
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
                  Expanded(
                      child: _textFormField(
                    hint: "Name",
                    controller: _customerNameController,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: _textFormField(
                    hint: "Mobile",
                    controller: _customerMobileController,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: _textFormField(
                    hint: "Email",
                    controller: _customerEmailController,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: _textFormField(
                    hint: "Address",
                    controller: _customerAddressController,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFormField(
      {required String hint, TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
