import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_admin_dashboard/screens/payment_page/model/payment_response.dart';
import 'package:responsive_admin_dashboard/services/network/api_provider.dart';

class PaymentController with ChangeNotifier {
  APIProviderIml _apiProviderIml = GetIt.I.get<APIProviderIml>();
  List<PaymentPayload>? paymentList;

  void addPayment(context) {}

  void updatePayment(context, id) {}

  Future<void> getPaymentList(context) async {
    try {
      var result = await _apiProviderIml.fetchAllPaymentList(context);
      if (result.error.code == 200) {
        paymentList = result.payload;
        notifyListeners();
      } else {
        paymentList = [];
        notifyListeners();
      }
    } catch (e) {
      print("getPaymentList ${e.toString()}");
    }
  }

  void deletePayment(context, id) {}

  void getPaymentDetails(context, id) {}
}
