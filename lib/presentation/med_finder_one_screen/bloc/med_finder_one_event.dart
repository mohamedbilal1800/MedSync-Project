// ignore_for_file: must_be_immutable

part of 'med_finder_one_bloc.dart';

@immutable
abstract class MedFinderOneEvent extends Equatable {}

class MedFinderOneInitialEvent extends MedFinderOneEvent {
  @override
  List<Object?> get props => [];
}
