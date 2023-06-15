// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listparacetamol3_item_model.dart';/// This class defines the variables used in the [compliance_historysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistorysixModel extends Equatable {ComplianceHistorysixModel({this.listparacetamol3ItemList = const []});

List<Listparacetamol3ItemModel> listparacetamol3ItemList;

ComplianceHistorysixModel copyWith({List<Listparacetamol3ItemModel>? listparacetamol3ItemList}) { return ComplianceHistorysixModel(
listparacetamol3ItemList : listparacetamol3ItemList ?? this.listparacetamol3ItemList,
); } 
@override List<Object?> get props => [listparacetamol3ItemList];
 }
