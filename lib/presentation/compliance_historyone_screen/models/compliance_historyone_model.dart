// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listsun_item_model.dart';/// This class defines the variables used in the [compliance_historyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistoryoneModel extends Equatable {ComplianceHistoryoneModel({this.listsunItemList = const []});

List<ListsunItemModel> listsunItemList;

ComplianceHistoryoneModel copyWith({List<ListsunItemModel>? listsunItemList}) { return ComplianceHistoryoneModel(
listsunItemList : listsunItemList ?? this.listsunItemList,
); } 
@override List<Object?> get props => [listsunItemList];
 }
