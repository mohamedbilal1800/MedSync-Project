import '../compliance_historythree_screen/widgets/listparacetamol_item_widget.dart';
import 'bloc/compliance_historythree_bloc.dart';
import 'models/compliance_historythree_model.dart';
import 'models/listparacetamol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';

class ComplianceHistorythreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ComplianceHistorythreeBloc>(
        create: (context) => ComplianceHistorythreeBloc(
            ComplianceHistorythreeState(
                complianceHistorythreeModelObj: ComplianceHistorythreeModel()))
          ..add(ComplianceHistorythreeInitialEvent()),
        child: ComplianceHistorythreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 29, right: 24, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(122),
                          text: "lbl_morning".tr,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.NotoSansBold20,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapMorning(context);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: BlocSelector<
                                      ComplianceHistorythreeBloc,
                                      ComplianceHistorythreeState,
                                      ComplianceHistorythreeModel?>(
                                  selector: (state) =>
                                      state.complianceHistorythreeModelObj,
                                  builder: (context,
                                      complianceHistorythreeModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(60));
                                        },
                                        itemCount:
                                            complianceHistorythreeModelObj
                                                    ?.listparacetamolItemList
                                                    .length ??
                                                0,
                                        itemBuilder: (context, index) {
                                          ListparacetamolItemModel model =
                                              complianceHistorythreeModelObj
                                                          ?.listparacetamolItemList[
                                                      index] ??
                                                  ListparacetamolItemModel();
                                          return ListparacetamolItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }

  onTapMorning(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complianceHistorytwoScreen,
    );
  }
}
