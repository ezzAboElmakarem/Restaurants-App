import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'delivery_screen_state.dart';

class DeliveryScreenCubit extends Cubit<DeliveryScreenStates> {
  DeliveryScreenCubit() : super(DeliveryScreenInitial());

  final List<String> foodCategories = [
    'All',
    'Pizza',
    'Burgers',
    'Sushi',
    'Bakery',
    'Pizza',
    'Burgers',
    'Sushi',
    'Bakery',
  ];

  final bool selected = true;
  final int index = 0;
  List<String> filters = [
    'All',
    'Pizza',
    'Burgers',
    'Sushi',
    'Bakers',
  ];

  static DeliveryScreenCubit get(context) => BlocProvider.of(context);

  selectFilter() {
    emit(SelectGategoryState());
  }
}
