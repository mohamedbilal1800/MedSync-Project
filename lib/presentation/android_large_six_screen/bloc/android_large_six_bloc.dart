import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/android_large_six_screen/models/android_large_six_model.dart';
part 'android_large_six_event.dart';
part 'android_large_six_state.dart';

class AndroidLargeSixBloc
    extends Bloc<AndroidLargeSixEvent, AndroidLargeSixState> {
  AndroidLargeSixBloc(AndroidLargeSixState initialState) : super(initialState) {
    on<AndroidLargeSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSixInitialEvent event,
    Emitter<AndroidLargeSixState> emit,
  ) async {}
}
