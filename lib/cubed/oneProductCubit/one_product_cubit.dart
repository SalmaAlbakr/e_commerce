import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/onePoduct_model.dart';
import 'package:e_commerce/repositry/oneProductRepositry.dart';
import 'package:meta/meta.dart';

part 'one_product_state.dart';

class OneProductCubit extends Cubit<OneProductState> {
  OneProductCubit() : super(OneProductInitial());

void getOneProduct (int idNum) async{

  final ListOfOneCategory = await OneProduct().getProduct(idNum.toString());
  emit(OneProductSuccesses(ListOfOneCategory));

}
}
