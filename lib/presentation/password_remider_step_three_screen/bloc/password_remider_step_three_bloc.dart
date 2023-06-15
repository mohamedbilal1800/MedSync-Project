import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/password_remider_step_three_screen/models/password_remider_step_three_model.dart';
part 'password_remider_step_three_event.dart';
part 'password_remider_step_three_state.dart';

class PasswordRemiderStepThreeBloc
    extends Bloc<PasswordRemiderStepThreeEvent, PasswordRemiderStepThreeState> {
  PasswordRemiderStepThreeBloc(PasswordRemiderStepThreeState initialState)
      : super(initialState) {
    on<PasswordRemiderStepThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PasswordRemiderStepThreeInitialEvent event,
    Emitter<PasswordRemiderStepThreeState> emit,
  ) async {}
}
