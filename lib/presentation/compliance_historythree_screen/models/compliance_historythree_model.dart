// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listparacetamol_item_model.dart';/// This class defines the variables used in the [compliance_historythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistorythreeModel extends Equatable {ComplianceHistorythreeModel({this.listparacetamolItemList = const []});

List<ListparacetamolItemModel> listparacetamolItemList;

ComplianceHistorythreeModel copyWith({List<ListparacetamolItemModel>? listparacetamolItemList}) { return ComplianceHistorythreeModel(
listparacetamolItemList : listparacetamolItemList ?? this.listparacetamolItemList,
); } 
@override List<Object?> get props => [listparacetamolItemList];
 }
