import '../adding_supplementation_screen/widgets/chips_item_widget.dart';
import '../adding_supplementation_screen/widgets/dosage_item_widget.dart';
import '../adding_supplementation_screen/widgets/formscarousel_item_widget.dart';
import 'bloc/adding_supplementation_bloc.dart';
import 'models/adding_supplementation_model.dart';
import 'models/chips_item_model.dart';
import 'models/dosage_item_model.dart';
import 'models/formscarousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_button.dart';
import 'package:medsync_project/widgets/custom_drop_down.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';
import 'package:medsync_project/widgets/custom_text_form_field.dart';

class AddingSupplementationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddingSupplementationBloc>(
      create: (context) => AddingSupplementationBloc(AddingSupplementationState(
        addingSupplementationModelObj: AddingSupplementationModel(),
      ))
        ..add(AddingSupplementationInitialEvent()),
      child: AddingSupplementationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blue10001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    margin: getMargin(
                      right: 24,
                    ),
                    shape: IconButtonShape.RoundedBorder10,
                    padding: IconButtonPadding.PaddingAll8,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCloseBlueGray400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 29,
                      top: 18,
                    ),
                    child: Text(
                      "lbl_add_supplement".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold30.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Text(
                      "lbl_supplement_name".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 7,
                      right: 24,
                    ),
                    decoration: AppDecoration.outlineBlack900,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: Container(
                            width: getHorizontalSize(
                              312,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 13,
                              right: 16,
                              bottom: 13,
                            ),
                            decoration:
                                AppDecoration.outlineIndigoA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "msg_type_name_of_the".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtNotoSansRegular14Bluegray900
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.indigo50,
                      endIndent: getHorizontalSize(
                        24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Text(
                      "lbl_supplement_form".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        97,
                      ),
                      child: BlocSelector<
                          AddingSupplementationBloc,
                          AddingSupplementationState,
                          AddingSupplementationModel?>(
                        selector: (state) =>
                            state.addingSupplementationModelObj,
                        builder: (context, addingSupplementationModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              top: 7,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: getVerticalSize(
                                  12,
                                ),
                              );
                            },
                            itemCount: addingSupplementationModelObj
                                    ?.formscarouselItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              FormscarouselItemModel model =
                                  addingSupplementationModelObj
                                          ?.formscarouselItemList[index] ??
                                      FormscarouselItemModel();
                              return FormscarouselItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 17,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.indigo50,
                      endIndent: getHorizontalSize(
                        24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_dosage".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_times_a_day".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtNotoSansMedium12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      54,
                    ),
                    child: BlocSelector<
                        AddingSupplementationBloc,
                        AddingSupplementationState,
                        AddingSupplementationModel?>(
                      selector: (state) => state.addingSupplementationModelObj,
                      builder: (context, addingSupplementationModelObj) {
                        return ListView.separated(
                          padding: getPadding(
                            top: 6,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: getVerticalSize(
                                12,
                              ),
                            );
                          },
                          itemCount: addingSupplementationModelObj
                                  ?.dosageItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            DosageItemModel model =
                                addingSupplementationModelObj
                                        ?.dosageItemList[index] ??
                                    DosageItemModel();
                            return DosageItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.indigo50,
                      endIndent: getHorizontalSize(
                        24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl_frequency".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  BlocSelector<AddingSupplementationBloc,
                      AddingSupplementationState, AddingSupplementationModel?>(
                    selector: (state) => state.addingSupplementationModelObj,
                    builder: (context, addingSupplementationModelObj) {
                      return CustomDropDown(
                        focusNode: FocusNode(),
                        autofocus: true,
                        icon: Container(
                          margin: getMargin(
                            left: 30,
                            right: 12,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                          ),
                        ),
                        hintText: "lbl_everyday".tr,
                        margin: getMargin(
                          top: 6,
                          right: 24,
                        ),
                        items:
                            addingSupplementationModelObj?.dropdownItemList ??
                                [],
                        onChanged: (value) {
                          context
                              .read<AddingSupplementationBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Text(
                      "lbl_duration".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  BlocSelector<AddingSupplementationBloc,
                      AddingSupplementationState, AddingSupplementationModel?>(
                    selector: (state) => state.addingSupplementationModelObj,
                    builder: (context, addingSupplementationModelObj) {
                      return CustomDropDown(
                        focusNode: FocusNode(),
                        autofocus: true,
                        icon: Container(
                          margin: getMargin(
                            left: 30,
                            right: 12,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                          ),
                        ),
                        hintText: "lbl_30_days".tr,
                        margin: getMargin(
                          top: 9,
                          right: 24,
                        ),
                        items:
                            addingSupplementationModelObj?.dropdownItemList1 ??
                                [],
                        onChanged: (value) {
                          context
                              .read<AddingSupplementationBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl_time_of_day".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                      right: 44,
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 64,
                              width: 64,
                              variant: IconButtonVariant.OutlineIndigoA200,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgLightbulb,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_morning".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNotoSansSemiBold12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 64,
                                width: 64,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconafternoon,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "lbl_afternoon".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtNotoSansSemiBold12Bluegray400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 64,
                                width: 64,
                                child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgLightbulbBlueGray400,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_evening".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtNotoSansSemiBold12Bluegray400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 64,
                                width: 64,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgIconnight,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_night".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtNotoSansSemiBold12Bluegray400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      32,
                    ),
                    width: getHorizontalSize(
                      134,
                    ),
                    text: "lbl_add_custom_time".tr,
                    margin: getMargin(
                      top: 13,
                    ),
                    variant: ButtonVariant.OutlineIndigoA200,
                    shape: ButtonShape.CircleBorder16,
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.NotoSansSemiBold12,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.indigo50,
                      endIndent: getHorizontalSize(
                        24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Text(
                      "msg_taking_with_meals".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold16,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      39,
                    ),
                    child: BlocSelector<
                        AddingSupplementationBloc,
                        AddingSupplementationState,
                        AddingSupplementationModel?>(
                      selector: (state) => state.addingSupplementationModelObj,
                      builder: (context, addingSupplementationModelObj) {
                        return ListView.separated(
                          padding: getPadding(
                            top: 7,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: getVerticalSize(
                                12,
                              ),
                            );
                          },
                          itemCount: addingSupplementationModelObj
                                  ?.chipsItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ChipsItemModel model = addingSupplementationModelObj
                                    ?.chipsItemList[index] ??
                                ChipsItemModel();
                            return ChipsItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 39,
                    ),
                    child: Text(
                      "lbl_set_reminder".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNotoSansBold20.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.24,
                        ),
                      ),
                    ),
                  ),
                  BlocSelector<AddingSupplementationBloc,
                      AddingSupplementationState, TextEditingController?>(
                    selector: (state) => state.timeController,
                    builder: (context, timeController) {
                      return CustomTextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: timeController,
                        hintText: "msg_after_exceeding".tr,
                        margin: getMargin(
                          top: 8,
                          right: 24,
                        ),
                        variant: TextFormFieldVariant.OutlineBlack900,
                        padding: TextFormFieldPadding.PaddingT25,
                        fontStyle: TextFormFieldFontStyle.NotoSansBold16,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          padding: getPadding(
                            left: 5,
                            top: 6,
                            right: 5,
                            bottom: 6,
                          ),
                          margin: getMargin(
                            left: 30,
                            top: 27,
                            right: 3,
                            bottom: 27,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.cyan300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                9,
                              ),
                            ),
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgVectorWhiteA700,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            72,
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    width: getHorizontalSize(
                      312,
                    ),
                    margin: getMargin(
                      right: 24,
                    ),
                    padding: getPadding(
                      top: 24,
                      bottom: 24,
                    ),
                    decoration: AppDecoration.outlineBlack9001,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_before_the_sheduled".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: getVerticalSize(
            60,
          ),
          width: getHorizontalSize(
            312,
          ),
          margin: getMargin(
            left: 24,
            right: 24,
            bottom: 36,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBtnshadowIndigoA100,
                height: getVerticalSize(
                  20,
                ),
                width: getHorizontalSize(
                  240,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: getMargin(
                    bottom: 4,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 15,
                    right: 20,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.fillIndigoA200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_add_supplement".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansSemiBold16.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.19,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          left: 59,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
