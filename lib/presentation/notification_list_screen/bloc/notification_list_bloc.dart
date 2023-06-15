import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcheck_item_model.dart';
import 'package:medsync_project/presentation/notification_list_screen/models/notification_list_model.dart';
part 'notification_list_event.dart';
part 'notification_list_state.dart';

class NotificationListBloc
    extends Bloc<NotificationListEvent, NotificationListState> {
  NotificationListBloc(NotificationListState initialState)
      : super(initialState) {
    on<NotificationListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationListInitialEvent event,
    Emitter<NotificationListState> emit,
  ) async {
    emit(state.copyWith(
        notificationListModelObj: state.notificationListModelObj
            ?.copyWith(listcheckItemList: fillListcheckItemList())));
  }

  List<ListcheckItemModel> fillListcheckItemList() {
    return List.generate(3, (index) => ListcheckItemModel());
  }
}
