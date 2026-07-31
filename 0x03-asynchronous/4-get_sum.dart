import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    String userId = user['id'];

    String userOrder = await fetchUserOrders(userId);
    List<dynamic> order = json.decode(userOrder);

    double total = 0;
    for (var product in order) {
      String productPrice = await fetchProductPrice(product);
      total += json.decode(productPrice);
    }

    return (total);
  }
  catch (error) {
    return (-1);
  }
}
