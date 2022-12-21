import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/product_model.dart';
import 'package:e_commerce/repository/product_repository.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void getAllHomeProducts() async{
    final ListOfHomeProducts = await ProductRepository().getAllProduct();
    emit(ProductSuccesses(ListOfHomeProducts));
  }
}
