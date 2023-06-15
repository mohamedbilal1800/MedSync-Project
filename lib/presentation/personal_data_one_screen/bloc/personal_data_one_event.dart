// ignore_for_file: must_be_immutable

part of 'personal_data_one_bloc.dart';

@immutable
abstract class PersonalDataOneEvent extends Equatable {}

class PersonalDataOneInitialEvent extends PersonalDataOneEvent {
  @override
  List<Object?> get props => [];
}
