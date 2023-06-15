// ignore_for_file: must_be_immutable

part of 'notification_list_delete_bloc.dart';

@immutable
abstract class NotificationListDeleteEvent extends Equatable {}

class NotificationListDeleteInitialEvent extends NotificationListDeleteEvent {
  @override
  List<Object?> get props => [];
}
