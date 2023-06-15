import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/login_one_screen/models/login_one_model.dart';
part 'login_one_event.dart';
part 'login_one_state.dart';

class LoginOneBloc extends Bloc<LoginOneEvent, LoginOneState> {
  LoginOneBloc(LoginOneState initialState) : super(initialState) {
    on<LoginOneInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    LoginOneInitialEvent event,
    Emitter<LoginOneState> emit,
  ) async {
    emit(state.copyWith(
        emailoneController: TextEditingController(),
        passwordoneController: TextEditingController(),
        isShowPassword: true));
  }
}
