// ignore_for_file: must_be_immutable

part of 'notification_list_delete_bloc.dart';

class NotificationListDeleteState extends Equatable {
  NotificationListDeleteState({this.notificationListDeleteModelObj});

  NotificationListDeleteModel? notificationListDeleteModelObj;

  @override
  List<Object?> get props => [
        notificationListDeleteModelObj,
      ];
  NotificationListDeleteState copyWith(
      {NotificationListDeleteModel? notificationListDeleteModelObj}) {
    return NotificationListDeleteState(
      notificationListDeleteModelObj:
          notificationListDeleteModelObj ?? this.notificationListDeleteModelObj,
    );
  }
}
