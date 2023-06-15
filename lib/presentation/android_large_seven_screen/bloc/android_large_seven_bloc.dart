import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/android_large_seven_screen/models/android_large_seven_model.dart';
part 'android_large_seven_event.dart';
part 'android_large_seven_state.dart';

class AndroidLargeSevenBloc
    extends Bloc<AndroidLargeSevenEvent, AndroidLargeSevenState> {
  AndroidLargeSevenBloc(AndroidLargeSevenState initialState)
      : super(initialState) {
    on<AndroidLargeSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSevenInitialEvent event,
    Emitter<AndroidLargeSevenState> emit,
  ) async {
    emit(state.copyWith(
        medcounterController: TextEditingController(),
        medcounteroneController: TextEditingController(),
        medcountertwoController: TextEditingController()));
  }
}
