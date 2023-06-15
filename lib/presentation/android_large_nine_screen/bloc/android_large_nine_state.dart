// ignore_for_file: must_be_immutable

part of 'android_large_nine_bloc.dart';

class AndroidLargeNineState extends Equatable {
  AndroidLargeNineState({
    this.medcounterController,
    this.medcounteroneController,
    this.medcountertwoController,
    this.medcounterController1,
    this.androidLargeNineModelObj,
  });

  TextEditingController? medcounterController;

  TextEditingController? medcounteroneController;

  TextEditingController? medcountertwoController;

  TextEditingController? medcounterController1;

  AndroidLargeNineModel? androidLargeNineModelObj;

  @override
  List<Object?> get props => [
        medcounterController,
        medcounteroneController,
        medcountertwoController,
        medcounterController1,
        androidLargeNineModelObj,
      ];
  AndroidLargeNineState copyWith({
    TextEditingController? medcounterController,
    TextEditingController? medcounteroneController,
    TextEditingController? medcountertwoController,
    TextEditingController? medcounterController1,
    AndroidLargeNineModel? androidLargeNineModelObj,
  }) {
    return AndroidLargeNineState(
      medcounterController: medcounterController ?? this.medcounterController,
      medcounteroneController:
          medcounteroneController ?? this.medcounteroneController,
      medcountertwoController:
          medcountertwoController ?? this.medcountertwoController,
      medcounterController1:
          medcounterController1 ?? this.medcounterController1,
      androidLargeNineModelObj:
          androidLargeNineModelObj ?? this.androidLargeNineModelObj,
    );
  }
}
