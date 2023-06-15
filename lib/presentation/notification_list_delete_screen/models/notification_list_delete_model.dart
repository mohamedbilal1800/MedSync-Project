// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listcheck1_item_model.dart';/// This class defines the variables used in the [notification_list_delete_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListDeleteModel extends Equatable {NotificationListDeleteModel({this.listcheck1ItemList = const []});

List<Listcheck1ItemModel> listcheck1ItemList;

NotificationListDeleteModel copyWith({List<Listcheck1ItemModel>? listcheck1ItemList}) { return NotificationListDeleteModel(
listcheck1ItemList : listcheck1ItemList ?? this.listcheck1ItemList,
); } 
@override List<Object?> get props => [listcheck1ItemList];
 }
