// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

@immutable
abstract class ContactUsEvent extends Equatable {}

class ContactUsInitialEvent extends ContactUsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ContactUsEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
