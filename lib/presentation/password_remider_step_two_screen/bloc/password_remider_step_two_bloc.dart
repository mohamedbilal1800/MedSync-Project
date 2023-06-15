import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/password_remider_step_two_screen/models/password_remider_step_two_model.dart';
part 'password_remider_step_two_event.dart';
part 'password_remider_step_two_state.dart';

class PasswordRemiderStepTwoBloc
    extends Bloc<PasswordRemiderStepTwoEvent, PasswordRemiderStepTwoState> {
  PasswordRemiderStepTwoBloc(PasswordRemiderStepTwoState initialState)
      : super(initialState) {
    on<PasswordRemiderStepTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<PasswordRemiderStepTwoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    PasswordRemiderStepTwoInitialEvent event,
    Emitter<PasswordRemiderStepTwoState> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(), isShowPassword: true));
  }
}
