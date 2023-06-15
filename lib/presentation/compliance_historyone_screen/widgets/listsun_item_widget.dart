import '../models/listsun_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

// ignore: must_be_immutable
class ListsunItemWidget extends StatelessWidget {
  ListsunItemWidget(this.listsunItemModelObj);

  ListsunItemModel listsunItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              listsunItemModelObj.sunTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFProTextSemibold14,
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                listsunItemModelObj.twentysixTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                listsunItemModelObj.twentysixoneTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 56,
                ),
                child: Text(
                  listsunItemModelObj.twentysixtwoTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextMedium14Gray700,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 56,
              ),
              child: Text(
                listsunItemModelObj.twentysixthreeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 56,
              ),
              child: Text(
                listsunItemModelObj.twentysixfourTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextMedium14Gray700,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 56,
                ),
                child: Text(
                  listsunItemModelObj.twentysixfiveTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextMedium14Gray700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
