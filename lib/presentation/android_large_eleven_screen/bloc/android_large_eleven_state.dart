// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

class AndroidLargeElevenState extends Equatable {
  AndroidLargeElevenState({
    this.imgcounterController,
    this.imgcounteroneController,
    this.imgcountertwoController,
    this.androidLargeElevenModelObj,
  });

  TextEditingController? imgcounterController;

  TextEditingController? imgcounteroneController;

  TextEditingController? imgcountertwoController;

  AndroidLargeElevenModel? androidLargeElevenModelObj;

  @override
  List<Object?> get props => [
        imgcounterController,
        imgcounteroneController,
        imgcountertwoController,
        androidLargeElevenModelObj,
      ];
  AndroidLargeElevenState copyWith({
    TextEditingController? imgcounterController,
    TextEditingController? imgcounteroneController,
    TextEditingController? imgcountertwoController,
    AndroidLargeElevenModel? androidLargeElevenModelObj,
  }) {
    return AndroidLargeElevenState(
      imgcounterController: imgcounterController ?? this.imgcounterController,
      imgcounteroneController:
          imgcounteroneController ?? this.imgcounteroneController,
      imgcountertwoController:
          imgcountertwoController ?? this.imgcountertwoController,
      androidLargeElevenModelObj:
          androidLargeElevenModelObj ?? this.androidLargeElevenModelObj,
    );
  }
}
