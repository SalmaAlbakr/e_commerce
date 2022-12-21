import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/one_product_model.dart';
import 'package:e_commerce/repository/one_product_repositry.dart';
import 'package:meta/meta.dart';

part 'one_product_state.dart';

class OneProductCubit extends Cubit<OneProductState> {
  OneProductCubit() : super(OneProductInitial());

void getOneProduct (int idNum) async{

  final ListOfOneCategory = await OneProduct().getProduct(idNum.toString());
  emit(OneProductSuccesses(ListOfOneCategory));

}
}
