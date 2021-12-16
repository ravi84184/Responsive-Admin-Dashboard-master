import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_admin_dashboard/screens/customer_page/model/customer_response.dart';
import 'package:responsive_admin_dashboard/services/network/api_provider.dart';

class CustomerController with ChangeNotifier {
  APIProviderIml _apiProviderIml = GetIt.I.get<APIProviderIml>();
  List<CustomerPayload>? customerList;

  void addCustomer(context) {}

  void updateCustomer(context, id) {}

  Future<void> getCustomerList(context) async {
    try {
      var result = await _apiProviderIml.fetchAllCustomerList(context);
      if (result.error.code == 200) {
        customerList = result.payload;
        notifyListeners();
      } else {
        customerList = [];
      }
    } catch (e) {
      print("getCustomerList ${e.toString()}");
    }
  }

  void deleteCustomer(context, id) {}

  void getCustomerDetails(context, id) {}
}
