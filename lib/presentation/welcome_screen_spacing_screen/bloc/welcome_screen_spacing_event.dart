// ignore_for_file: must_be_immutable

part of 'welcome_screen_spacing_bloc.dart';

@immutable
abstract class WelcomeScreenSpacingEvent extends Equatable {}

class WelcomeScreenSpacingInitialEvent extends WelcomeScreenSpacingEvent {
  @override
  List<Object?> get props => [];
}
