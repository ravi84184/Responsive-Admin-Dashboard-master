import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_admin_dashboard/screens/company_page/model/company_response.dart';
import 'package:responsive_admin_dashboard/services/network/api_provider.dart';

class CompanyController with ChangeNotifier {
  APIProviderIml _apiProviderIml = GetIt.I.get<APIProviderIml>();
  List<CompanyPayload>? companyList;

  void addCompany(context) {}

  void updateCompany(context, id) {}

  Future<void> getCompanyList(context) async {
    try {
      var result = await _apiProviderIml.fetchAllCompanyList(context);
      if (result.error.code == 200) {
        companyList = result.payload;
        notifyListeners();
      } else {
        companyList = [];
        notifyListeners();
      }
    } catch (e) {
      print("getCustomerList ${e.toString()}");
    }
  }

  void deleteCustomer(context, id) {}

  void getCustomerDetails(context, id) {}
}
