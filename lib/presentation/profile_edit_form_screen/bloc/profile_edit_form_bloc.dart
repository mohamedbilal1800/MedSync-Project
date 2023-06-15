import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/profile_edit_form_screen/models/profile_edit_form_model.dart';
part 'profile_edit_form_event.dart';
part 'profile_edit_form_state.dart';

class ProfileEditFormBloc
    extends Bloc<ProfileEditFormEvent, ProfileEditFormState> {
  ProfileEditFormBloc(ProfileEditFormState initialState) : super(initialState) {
    on<ProfileEditFormInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEditFormInitialEvent event,
    Emitter<ProfileEditFormState> emit,
  ) async {
    emit(state.copyWith(
        fullnameController: TextEditingController(),
        emailoneController: TextEditingController(),
        languageController: TextEditingController(),
        phoneoneController: TextEditingController(),
        dateofbirthoneController: TextEditingController(),
        ageoneController: TextEditingController()));
  }
}
