// ignore_for_file: must_be_immutable

part of 'android_large_six_bloc.dart';

class AndroidLargeSixState extends Equatable {
  AndroidLargeSixState({this.androidLargeSixModelObj});

  AndroidLargeSixModel? androidLargeSixModelObj;

  @override
  List<Object?> get props => [
        androidLargeSixModelObj,
      ];
  AndroidLargeSixState copyWith(
      {AndroidLargeSixModel? androidLargeSixModelObj}) {
    return AndroidLargeSixState(
      androidLargeSixModelObj:
          androidLargeSixModelObj ?? this.androidLargeSixModelObj,
    );
  }
}
