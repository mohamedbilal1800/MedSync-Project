import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/personal_data_e_mail_screen/models/personal_data_e_mail_model.dart';
part 'personal_data_e_mail_event.dart';
part 'personal_data_e_mail_state.dart';

class PersonalDataEMailBloc
    extends Bloc<PersonalDataEMailEvent, PersonalDataEMailState> {
  PersonalDataEMailBloc(PersonalDataEMailState initialState)
      : super(initialState) {
    on<PersonalDataEMailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalDataEMailInitialEvent event,
    Emitter<PersonalDataEMailState> emit,
  ) async {
    emit(state.copyWith(emailoneController: TextEditingController()));
  }
}
