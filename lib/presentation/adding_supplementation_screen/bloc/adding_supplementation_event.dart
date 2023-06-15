// ignore_for_file: must_be_immutable

part of 'adding_supplementation_bloc.dart';

@immutable
abstract class AddingSupplementationEvent extends Equatable {}

class AddingSupplementationInitialEvent extends AddingSupplementationEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddingSupplementationEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AddingSupplementationEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
