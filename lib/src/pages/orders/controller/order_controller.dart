import 'package:get/get.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/orders/repository/orders_repository.dart';

class OrderController extends GetxController {
  final ordersRepository = OrdersRepository();
  final authController = Get.find<AuthController>();

  OrderModel order;

  OrderController(this.order);

  Future<void> getOrderItems() async {
    ordersRepository.getOrderItems(
      orderId: order.id,
      token: authController.user.token!,
    );
  }
}
