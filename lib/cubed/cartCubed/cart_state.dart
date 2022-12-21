part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartSuccesses extends CartState {
final CartTitle cartModel;

  CartSuccesses(this.cartModel);
}