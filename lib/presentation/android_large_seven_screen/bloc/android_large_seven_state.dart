// ignore_for_file: must_be_immutable

part of 'android_large_seven_bloc.dart';

class AndroidLargeSevenState extends Equatable {
  AndroidLargeSevenState({
    this.medcounterController,
    this.medcounteroneController,
    this.medcountertwoController,
    this.androidLargeSevenModelObj,
  });

  TextEditingController? medcounterController;

  TextEditingController? medcounteroneController;

  TextEditingController? medcountertwoController;

  AndroidLargeSevenModel? androidLargeSevenModelObj;

  @override
  List<Object?> get props => [
        medcounterController,
        medcounteroneController,
        medcountertwoController,
        androidLargeSevenModelObj,
      ];
  AndroidLargeSevenState copyWith({
    TextEditingController? medcounterController,
    TextEditingController? medcounteroneController,
    TextEditingController? medcountertwoController,
    AndroidLargeSevenModel? androidLargeSevenModelObj,
  }) {
    return AndroidLargeSevenState(
      medcounterController: medcounterController ?? this.medcounterController,
      medcounteroneController:
          medcounteroneController ?? this.medcounteroneController,
      medcountertwoController:
          medcountertwoController ?? this.medcountertwoController,
      androidLargeSevenModelObj:
          androidLargeSevenModelObj ?? this.androidLargeSevenModelObj,
    );
  }
}
