import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/android_large_nine_screen/models/android_large_nine_model.dart';
part 'android_large_nine_event.dart';
part 'android_large_nine_state.dart';

class AndroidLargeNineBloc
    extends Bloc<AndroidLargeNineEvent, AndroidLargeNineState> {
  AndroidLargeNineBloc(AndroidLargeNineState initialState)
      : super(initialState) {
    on<AndroidLargeNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNineInitialEvent event,
    Emitter<AndroidLargeNineState> emit,
  ) async {
    emit(state.copyWith(
        medcounterController: TextEditingController(),
        medcounteroneController: TextEditingController(),
        medcountertwoController: TextEditingController(),
        medcounterController1: TextEditingController()));
  }
}
