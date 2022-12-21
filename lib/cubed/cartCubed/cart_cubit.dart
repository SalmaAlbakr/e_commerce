import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/cart_model.dart';
import 'package:e_commerce/repository/cart%7B_repo.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  void getCartProduct() async{

    final ListOfCartProduct = await CartTitleRepo().getProductTitle();

    emit(CartSuccesses(ListOfCartProduct));
  }
}
