// ignore_for_file: must_be_immutable

part of 'notification_list_bloc.dart';

@immutable
abstract class NotificationListEvent extends Equatable {}

class NotificationListInitialEvent extends NotificationListEvent {
  @override
  List<Object?> get props => [];
}
