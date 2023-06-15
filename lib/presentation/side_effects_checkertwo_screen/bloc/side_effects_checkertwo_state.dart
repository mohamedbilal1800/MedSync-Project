// ignore_for_file: must_be_immutable

part of 'side_effects_checkertwo_bloc.dart';

class SideEffectsCheckertwoState extends Equatable {
  SideEffectsCheckertwoState({
    this.resultsshownController,
    this.sideEffectsCheckertwoModelObj,
  });

  TextEditingController? resultsshownController;

  SideEffectsCheckertwoModel? sideEffectsCheckertwoModelObj;

  @override
  List<Object?> get props => [
        resultsshownController,
        sideEffectsCheckertwoModelObj,
      ];
  SideEffectsCheckertwoState copyWith({
    TextEditingController? resultsshownController,
    SideEffectsCheckertwoModel? sideEffectsCheckertwoModelObj,
  }) {
    return SideEffectsCheckertwoState(
      resultsshownController:
          resultsshownController ?? this.resultsshownController,
      sideEffectsCheckertwoModelObj:
          sideEffectsCheckertwoModelObj ?? this.sideEffectsCheckertwoModelObj,
    );
  }
}
