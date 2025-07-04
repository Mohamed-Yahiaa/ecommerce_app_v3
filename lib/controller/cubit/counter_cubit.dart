import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

//"هذا الـ Cubit مسؤول عن إدارة حالات (states) من نوع CounterState أو أي كلاس يرث منها زي CounterInit أو CounterUpdate."
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());

  void increment() {
    // "هنا بنحدث الحالة الحالية بزيادة العداد بمقدار 1."
    emit(CounterUpdate(state.count + 1));
  }

  void decrement() {
    // "هنا بنحدث الحالة الحالية بإنقاص العداد بمقدار 1."
    emit(CounterUpdate(state.count - 1));
  }
}
