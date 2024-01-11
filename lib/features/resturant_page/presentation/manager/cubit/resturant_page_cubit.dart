import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'resturant_page_state.dart';

class ResturantPageCubit extends Cubit<ResturantPageStates> {
  ResturantPageCubit() : super(ResturantPageInitial());
  static ResturantPageCubit get(context) => BlocProvider.of(context);

  List<String> filters = [
    'Popular',
    'fish',
    'vegetables',
    'fruits',
    'Popular',
  ];

  bool isFavourite = false;
  String favouriteImge = 'lib/core/assets/images/empty_heart.png';

  bool ischecked_1 = false;
  bool ischecked_2 = false;
  String? selectedValue;
  int sizeOrder_Group_RadioButton = 0;
  int typeOrder_Group_RadioButton = 0;
  int sausOrder_Group_RadioButton = 0;
  int numOfOrders = 1;

  void toggleButton(String buttonName) {
    emit((state == buttonName ? '' : buttonName) as ResturantPageStates);
  }

  int numberOfOreders(int numberOfOrders) {
    numOfOrders = numberOfOrders;
    emit(SaveNumOfOrderState());
    return numOfOrders;
  }

  selectFilter() {
    emit(FilterPressedState());
  }

  changeFavourite() {
    isFavourite = !isFavourite;
    print(isFavourite);
    emit(ChangeFavouriteState());
  }

  emitState() {
    emit(SizeRadioButtonState());
  }
}
