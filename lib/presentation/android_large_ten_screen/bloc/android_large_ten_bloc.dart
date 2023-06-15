import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/android_large_ten_screen/models/android_large_ten_model.dart';
part 'android_large_ten_event.dart';
part 'android_large_ten_state.dart';

class AndroidLargeTenBloc
    extends Bloc<AndroidLargeTenEvent, AndroidLargeTenState> {
  AndroidLargeTenBloc(AndroidLargeTenState initialState) : super(initialState) {
    on<AndroidLargeTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTenInitialEvent event,
    Emitter<AndroidLargeTenState> emit,
  ) async {
    emit(state.copyWith(
        doccountertwoController: TextEditingController(),
        doccounterController: TextEditingController(),
        doccounterfourController: TextEditingController(),
        doccounterfiveController: TextEditingController()));
  }
}
