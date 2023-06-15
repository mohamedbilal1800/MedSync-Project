// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listparacetamol2_item_model.dart';/// This class defines the variables used in the [compliance_historyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComplianceHistoryfiveModel extends Equatable {ComplianceHistoryfiveModel({this.listparacetamol2ItemList = const []});

List<Listparacetamol2ItemModel> listparacetamol2ItemList;

ComplianceHistoryfiveModel copyWith({List<Listparacetamol2ItemModel>? listparacetamol2ItemList}) { return ComplianceHistoryfiveModel(
listparacetamol2ItemList : listparacetamol2ItemList ?? this.listparacetamol2ItemList,
); } 
@override List<Object?> get props => [listparacetamol2ItemList];
 }
