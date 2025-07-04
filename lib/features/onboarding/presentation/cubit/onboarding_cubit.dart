import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  final int totalPages;

  OnboardingCubit({required this.totalPages}) : super(0);

  void nextPage() {
    if (state < totalPages - 1) {
      emit(state + 1);
    }
  }

  void previousPage() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  void goToPage(int pageIndex) {
    if (pageIndex >= 0 && pageIndex < totalPages) {
      emit(pageIndex);
    }
  }

  bool get isLastPage => state == totalPages - 1;
}
