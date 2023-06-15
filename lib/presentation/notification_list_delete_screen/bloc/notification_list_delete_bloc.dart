import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcheck1_item_model.dart';
import 'package:medsync_project/presentation/notification_list_delete_screen/models/notification_list_delete_model.dart';
part 'notification_list_delete_event.dart';
part 'notification_list_delete_state.dart';

class NotificationListDeleteBloc
    extends Bloc<NotificationListDeleteEvent, NotificationListDeleteState> {
  NotificationListDeleteBloc(NotificationListDeleteState initialState)
      : super(initialState) {
    on<NotificationListDeleteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationListDeleteInitialEvent event,
    Emitter<NotificationListDeleteState> emit,
  ) async {
    emit(state.copyWith(
        notificationListDeleteModelObj: state.notificationListDeleteModelObj
            ?.copyWith(listcheck1ItemList: fillListcheck1ItemList())));
  }

  List<Listcheck1ItemModel> fillListcheck1ItemList() {
    return List.generate(3, (index) => Listcheck1ItemModel());
  }
}
