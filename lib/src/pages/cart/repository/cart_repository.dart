import 'package:greengrocer/src/constants/endpoints.dart';
import 'package:greengrocer/src/services/http_manager.dart';

class CartRepository {
  final _httpManager = HttpManager();

  Future getCartItems({
    required String token,
    required String userId,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getCartItems,
      method: HttpMethods.post,
      headers: {
        'X-Parse-Session-Token': token,
      },
      body: {
        'user': userId,
      },
    );

    if (result['result'] != null) {
      print(result['result']);
    } else {
      print('Ocorreu um erro ao recuperar os itens do carrinho');
    }
  }
}
