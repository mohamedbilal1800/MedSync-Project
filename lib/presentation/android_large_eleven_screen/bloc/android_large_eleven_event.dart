// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

@immutable
abstract class AndroidLargeElevenEvent extends Equatable {}

class AndroidLargeElevenInitialEvent extends AndroidLargeElevenEvent {
  @override
  List<Object?> get props => [];
}
