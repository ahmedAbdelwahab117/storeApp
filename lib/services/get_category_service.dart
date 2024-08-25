import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> product = [];
    for (int i = 0; i < data.length; i++) {
      product.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return product;
  }
}
