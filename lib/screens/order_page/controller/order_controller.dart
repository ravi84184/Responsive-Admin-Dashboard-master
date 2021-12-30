import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_admin_dashboard/screens/order_page/model/order_response.dart';
import 'package:responsive_admin_dashboard/services/network/api_provider.dart';

class OrderController with ChangeNotifier {
  APIProviderIml _apiProviderIml = GetIt.I.get<APIProviderIml>();
  List<OrderPayload>? orderList;

  void addOrder(context) {}

  void updateOrder(context, id) {}

  Future<void> getOrderList(context) async {
    try {
      var result = await _apiProviderIml.fetchAllOrderList(context);
      if (result.error.code == 200) {
        orderList = result.payload;
        notifyListeners();
      } else {
        orderList = [];
        notifyListeners();
      }
    } catch (e) {
      print("getOrderList ${e.toString()}");
    }
  }

  void deleteOrder(context, id) {}

  void getOrderDetails(context, id) {}
}
