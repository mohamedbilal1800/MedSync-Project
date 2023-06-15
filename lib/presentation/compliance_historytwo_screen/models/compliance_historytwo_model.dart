// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listcut_item_model.dart';/// This class defines the variables used in the [compliance_historytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistorytwoModel extends Equatable {ComplianceHistorytwoModel({this.listcutItemList = const []});

List<ListcutItemModel> listcutItemList;

ComplianceHistorytwoModel copyWith({List<ListcutItemModel>? listcutItemList}) { return ComplianceHistorytwoModel(
listcutItemList : listcutItemList ?? this.listcutItemList,
); } 
@override List<Object?> get props => [listcutItemList];
 }
