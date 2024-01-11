import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pick_up_screen_state.dart';

class PickUpScreenCubit extends Cubit<PickUpScreenStates> {
  PickUpScreenCubit() : super(PickUpScreenInitial());

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

  static PickUpScreenCubit get(context) => BlocProvider.of(context);

  selectFilter() {
    emit(SelectGategoryState());
  }
}
