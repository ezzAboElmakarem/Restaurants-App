import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'test_state.dart';

// class TestCubit extends Cubit<TestState> {
//   TestCubit() : super(TestInitial());
// }
class ToggleCategoryCubit extends Cubit<String> {
  ToggleCategoryCubit() : super('');
  static ToggleCategoryCubit get(context) => BlocProvider.of(context);

  void toggleCategoryName(String categoryName) {
    emit(state == categoryName ? '' : categoryName);
  }
}
