import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/password_remider_step_one_screen/models/password_remider_step_one_model.dart';
part 'password_remider_step_one_event.dart';
part 'password_remider_step_one_state.dart';

class PasswordRemiderStepOneBloc
    extends Bloc<PasswordRemiderStepOneEvent, PasswordRemiderStepOneState> {
  PasswordRemiderStepOneBloc(PasswordRemiderStepOneState initialState)
      : super(initialState) {
    on<PasswordRemiderStepOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PasswordRemiderStepOneInitialEvent event,
    Emitter<PasswordRemiderStepOneState> emit,
  ) async {
    emit(state.copyWith(emailoneController: TextEditingController()));
  }
}
