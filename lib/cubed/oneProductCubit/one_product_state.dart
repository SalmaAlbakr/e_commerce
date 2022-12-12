part of 'one_product_cubit.dart';

@immutable
abstract class OneProductState {}

class OneProductInitial extends OneProductState {}


class OneProductSuccesses extends OneProductState {
final singleProduct oneProductModel ;

  OneProductSuccesses(this.oneProductModel);

}
