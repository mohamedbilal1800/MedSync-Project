import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/change_password_success_screen/models/change_password_success_model.dart';
part 'change_password_success_event.dart';
part 'change_password_success_state.dart';

class ChangePasswordSuccessBloc
    extends Bloc<ChangePasswordSuccessEvent, ChangePasswordSuccessState> {
  ChangePasswordSuccessBloc(ChangePasswordSuccessState initialState)
      : super(initialState) {
    on<ChangePasswordSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChangePasswordSuccessInitialEvent event,
    Emitter<ChangePasswordSuccessState> emit,
  ) async {}
}
