import '../notification_list_delete_screen/widgets/listcheck1_item_widget.dart';
import 'bloc/notification_list_delete_bloc.dart';
import 'models/listcheck1_item_model.dart';
import 'models/notification_list_delete_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';

class NotificationListDeleteScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationListDeleteBloc>(
        create: (context) => NotificationListDeleteBloc(
            NotificationListDeleteState(
                notificationListDeleteModelObj: NotificationListDeleteModel()))
          ..add(NotificationListDeleteInitialEvent()),
        child: NotificationListDeleteScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(81),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      Padding(
                          padding: getPadding(
                              left: 24, top: 40, right: 196, bottom: 16),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24),
                                width: getSize(24),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () {
                                  onTapArrowleft13(context);
                                }),
                            AppbarSubtitle(
                                text: "lbl_notifications".tr,
                                margin: getMargin(left: 12, bottom: 2))
                          ])),
                      AppbarImage(
                          height: getVerticalSize(81),
                          width: getHorizontalSize(360),
                          imagePath: ImageConstant.imgSpacing)
                    ]))),
            body: Container(
                height: getVerticalSize(719),
                width: double.maxFinite,
                padding: getPadding(left: 12, right: 12),
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 12, right: 12),
                          child: BlocSelector<
                                  NotificationListDeleteBloc,
                                  NotificationListDeleteState,
                                  NotificationListDeleteModel?>(
                              selector: (state) =>
                                  state.notificationListDeleteModelObj,
                              builder:
                                  (context, notificationListDeleteModelObj) {
                                return ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(1));
                                    },
                                    itemCount: notificationListDeleteModelObj
                                            ?.listcheck1ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listcheck1ItemModel model =
                                          notificationListDeleteModelObj
                                                  ?.listcheck1ItemList[index] ??
                                              Listcheck1ItemModel();
                                      return Listcheck1ItemWidget(model);
                                    });
                              }))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 82),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getSize(40),
                              width: getSize(40),
                              padding: getPadding(all: 8),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Stack(children: [
                                CustomIconButton(
                                    height: 24,
                                    width: 24,
                                    variant: IconButtonVariant.FillCyan300,
                                    shape: IconButtonShape.RoundedBorder14,
                                    padding: IconButtonPadding.PaddingAll8,
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVectorWhiteA700))
                              ])))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: getSize(40),
                          width: getSize(40),
                          margin: getMargin(top: 17),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup48095422,
                                height: getSize(40),
                                width: getSize(40),
                                alignment: Alignment.center),
                            CustomImageView(
                                svgPath: ImageConstant.imgTrashRedA100,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.center)
                          ])))
                ]))));
  }

  onTapArrowleft13(BuildContext context) {
    NavigatorService.goBack();
  }
}
