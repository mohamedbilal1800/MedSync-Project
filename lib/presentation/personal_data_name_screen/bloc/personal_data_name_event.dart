// ignore_for_file: must_be_immutable

part of 'personal_data_name_bloc.dart';

@immutable
abstract class PersonalDataNameEvent extends Equatable {}

class PersonalDataNameInitialEvent extends PersonalDataNameEvent {
  @override
  List<Object?> get props => [];
}
