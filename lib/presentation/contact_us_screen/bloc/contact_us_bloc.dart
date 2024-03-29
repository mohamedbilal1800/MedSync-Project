import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/contact_us_screen/models/contact_us_model.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';

class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  ContactUsBloc(ContactUsState initialState) : super(initialState) {
    on<ContactUsInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ContactUsState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    ContactUsInitialEvent event,
    Emitter<ContactUsState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false));
  }
}
