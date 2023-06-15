// ignore_for_file: must_be_immutable

part of 'android_large_eight_bloc.dart';

class AndroidLargeEightState extends Equatable {
  AndroidLargeEightState({
    this.medicinesController,
    this.documentsController,
    this.photosController,
    this.androidLargeEightModelObj,
  });

  TextEditingController? medicinesController;

  TextEditingController? documentsController;

  TextEditingController? photosController;

  AndroidLargeEightModel? androidLargeEightModelObj;

  @override
  List<Object?> get props => [
        medicinesController,
        documentsController,
        photosController,
        androidLargeEightModelObj,
      ];
  AndroidLargeEightState copyWith({
    TextEditingController? medicinesController,
    TextEditingController? documentsController,
    TextEditingController? photosController,
    AndroidLargeEightModel? androidLargeEightModelObj,
  }) {
    return AndroidLargeEightState(
      medicinesController: medicinesController ?? this.medicinesController,
      documentsController: documentsController ?? this.documentsController,
      photosController: photosController ?? this.photosController,
      androidLargeEightModelObj:
          androidLargeEightModelObj ?? this.androidLargeEightModelObj,
    );
  }
}
