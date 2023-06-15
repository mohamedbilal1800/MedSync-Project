import '../notification_list_screen/widgets/listcheck_item_widget.dart';
import 'bloc/notification_list_bloc.dart';
import 'models/listcheck_item_model.dart';
import 'models/notification_list_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/app_bar/appbar_image.dart';
import 'package:medsync_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:medsync_project/widgets/app_bar/custom_app_bar.dart';

class NotificationListScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationListBloc>(
        create: (context) => NotificationListBloc(NotificationListState(
            notificationListModelObj: NotificationListModel()))
          ..add(NotificationListInitialEvent()),
        child: NotificationListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue10001,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(82),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      Padding(
                          padding: getPadding(
                              left: 24, top: 40, right: 196, bottom: 17),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24),
                                width: getSize(24),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () {
                                  onTapArrowleft12(context);
                                }),
                            AppbarSubtitle(
                                text: "lbl_notifications".tr,
                                margin: getMargin(left: 12, bottom: 2))
                          ])),
                      AppbarImage(
                          height: getVerticalSize(82),
                          width: getHorizontalSize(360),
                          imagePath: ImageConstant.imgSpacing)
                    ]))),
            body: Padding(
                padding: getPadding(left: 24, top: 2, right: 24),
                child: BlocSelector<NotificationListBloc, NotificationListState,
                        NotificationListModel?>(
                    selector: (state) => state.notificationListModelObj,
                    builder: (context, notificationListModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(1));
                          },
                          itemCount: notificationListModelObj
                                  ?.listcheckItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListcheckItemModel model = notificationListModelObj
                                    ?.listcheckItemList[index] ??
                                ListcheckItemModel();
                            return ListcheckItemWidget(model);
                          });
                    }))));
  }

  onTapArrowleft12(BuildContext context) {
    NavigatorService.goBack();
  }
}
