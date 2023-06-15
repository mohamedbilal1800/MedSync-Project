// ignore_for_file: must_be_immutable

part of 'welcome_screen_spacing_bloc.dart';

class WelcomeScreenSpacingState extends Equatable {
  WelcomeScreenSpacingState({this.welcomeScreenSpacingModelObj});

  WelcomeScreenSpacingModel? welcomeScreenSpacingModelObj;

  @override
  List<Object?> get props => [
        welcomeScreenSpacingModelObj,
      ];
  WelcomeScreenSpacingState copyWith(
      {WelcomeScreenSpacingModel? welcomeScreenSpacingModelObj}) {
    return WelcomeScreenSpacingState(
      welcomeScreenSpacingModelObj:
          welcomeScreenSpacingModelObj ?? this.welcomeScreenSpacingModelObj,
    );
  }
}
