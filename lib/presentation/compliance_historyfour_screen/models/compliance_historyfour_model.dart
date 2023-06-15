// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listparacetamol1_item_model.dart';/// This class defines the variables used in the [compliance_historyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistoryfourModel extends Equatable {ComplianceHistoryfourModel({this.listparacetamol1ItemList = const []});

List<Listparacetamol1ItemModel> listparacetamol1ItemList;

ComplianceHistoryfourModel copyWith({List<Listparacetamol1ItemModel>? listparacetamol1ItemList}) { return ComplianceHistoryfourModel(
listparacetamol1ItemList : listparacetamol1ItemList ?? this.listparacetamol1ItemList,
); } 
@override List<Object?> get props => [listparacetamol1ItemList];
 }
