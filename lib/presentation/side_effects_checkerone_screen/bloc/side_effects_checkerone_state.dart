// ignore_for_file: must_be_immutable

part of 'side_effects_checkerone_bloc.dart';

class SideEffectsCheckeroneState extends Equatable {
  SideEffectsCheckeroneState({
    this.medicineinputController,
    this.typeinputController,
    this.sideEffectsCheckeroneModelObj,
  });

  TextEditingController? medicineinputController;

  TextEditingController? typeinputController;

  SideEffectsCheckeroneModel? sideEffectsCheckeroneModelObj;

  @override
  List<Object?> get props => [
        medicineinputController,
        typeinputController,
        sideEffectsCheckeroneModelObj,
      ];
  SideEffectsCheckeroneState copyWith({
    TextEditingController? medicineinputController,
    TextEditingController? typeinputController,
    SideEffectsCheckeroneModel? sideEffectsCheckeroneModelObj,
  }) {
    return SideEffectsCheckeroneState(
      medicineinputController:
          medicineinputController ?? this.medicineinputController,
      typeinputController: typeinputController ?? this.typeinputController,
      sideEffectsCheckeroneModelObj:
          sideEffectsCheckeroneModelObj ?? this.sideEffectsCheckeroneModelObj,
    );
  }
}
