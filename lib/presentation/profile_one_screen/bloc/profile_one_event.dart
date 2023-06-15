// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

@immutable
abstract class ProfileOneEvent extends Equatable {}

class ProfileOneInitialEvent extends ProfileOneEvent {
  @override
  List<Object?> get props => [];
}
