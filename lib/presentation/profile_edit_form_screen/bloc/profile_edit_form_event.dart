// ignore_for_file: must_be_immutable

part of 'profile_edit_form_bloc.dart';

@immutable
abstract class ProfileEditFormEvent extends Equatable {}

class ProfileEditFormInitialEvent extends ProfileEditFormEvent {
  @override
  List<Object?> get props => [];
}
