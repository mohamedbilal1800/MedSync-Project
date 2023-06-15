// ignore_for_file: must_be_immutable

part of 'android_large_ten_bloc.dart';

class AndroidLargeTenState extends Equatable {
  AndroidLargeTenState({
    this.doccountertwoController,
    this.doccounterController,
    this.doccounterfourController,
    this.doccounterfiveController,
    this.androidLargeTenModelObj,
  });

  TextEditingController? doccountertwoController;

  TextEditingController? doccounterController;

  TextEditingController? doccounterfourController;

  TextEditingController? doccounterfiveController;

  AndroidLargeTenModel? androidLargeTenModelObj;

  @override
  List<Object?> get props => [
        doccountertwoController,
        doccounterController,
        doccounterfourController,
        doccounterfiveController,
        androidLargeTenModelObj,
      ];
  AndroidLargeTenState copyWith({
    TextEditingController? doccountertwoController,
    TextEditingController? doccounterController,
    TextEditingController? doccounterfourController,
    TextEditingController? doccounterfiveController,
    AndroidLargeTenModel? androidLargeTenModelObj,
  }) {
    return AndroidLargeTenState(
      doccountertwoController:
          doccountertwoController ?? this.doccountertwoController,
      doccounterController: doccounterController ?? this.doccounterController,
      doccounterfourController:
          doccounterfourController ?? this.doccounterfourController,
      doccounterfiveController:
          doccounterfiveController ?? this.doccounterfiveController,
      androidLargeTenModelObj:
          androidLargeTenModelObj ?? this.androidLargeTenModelObj,
    );
  }
}
