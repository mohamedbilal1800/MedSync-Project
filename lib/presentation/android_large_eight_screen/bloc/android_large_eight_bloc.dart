import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/android_large_eight_screen/models/android_large_eight_model.dart';
part 'android_large_eight_event.dart';
part 'android_large_eight_state.dart';

class AndroidLargeEightBloc
    extends Bloc<AndroidLargeEightEvent, AndroidLargeEightState> {
  AndroidLargeEightBloc(AndroidLargeEightState initialState)
      : super(initialState) {
    on<AndroidLargeEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeEightInitialEvent event,
    Emitter<AndroidLargeEightState> emit,
  ) async {
    emit(state.copyWith(
        medicinesController: TextEditingController(),
        documentsController: TextEditingController(),
        photosController: TextEditingController()));
  }
}
