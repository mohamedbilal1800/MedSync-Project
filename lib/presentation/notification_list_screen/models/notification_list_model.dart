// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listcheck_item_model.dart';/// This class defines the variables used in the [notification_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListModel extends Equatable {NotificationListModel({this.listcheckItemList = const []});

List<ListcheckItemModel> listcheckItemList;

NotificationListModel copyWith({List<ListcheckItemModel>? listcheckItemList}) { return NotificationListModel(
listcheckItemList : listcheckItemList ?? this.listcheckItemList,
); } 
@override List<Object?> get props => [listcheckItemList];
 }
