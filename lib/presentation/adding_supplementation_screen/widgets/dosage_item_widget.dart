import '../models/dosage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

// ignore: must_be_immutable
class DosageItemWidget extends StatelessWidget {
  DosageItemWidget(this.dosageItemModelObj);

  DosageItemModel dosageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getSize(
          48,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 19,
          top: 12,
          right: 19,
          bottom: 12,
        ),
        decoration: AppDecoration.txtOutlineIndigoA200.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder24,
        ),
        child: Text(
          dosageItemModelObj.oneTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtNotoSansBold16,
        ),
      ),
    );
  }
}
