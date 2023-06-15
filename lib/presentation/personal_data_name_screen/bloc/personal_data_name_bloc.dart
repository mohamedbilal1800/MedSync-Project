import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/personal_data_name_screen/models/personal_data_name_model.dart';
part 'personal_data_name_event.dart';
part 'personal_data_name_state.dart';

class PersonalDataNameBloc
    extends Bloc<PersonalDataNameEvent, PersonalDataNameState> {
  PersonalDataNameBloc(PersonalDataNameState initialState)
      : super(initialState) {
    on<PersonalDataNameInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalDataNameInitialEvent event,
    Emitter<PersonalDataNameState> emit,
  ) async {
    emit(state.copyWith(namevalueController: TextEditingController()));
  }
}
