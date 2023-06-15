// ignore_for_file: must_be_immutable

part of 'personal_data_e_mail_bloc.dart';

@immutable
abstract class PersonalDataEMailEvent extends Equatable {}

class PersonalDataEMailInitialEvent extends PersonalDataEMailEvent {
  @override
  List<Object?> get props => [];
}
