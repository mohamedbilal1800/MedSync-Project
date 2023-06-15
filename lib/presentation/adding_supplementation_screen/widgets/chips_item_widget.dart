import '../models/chips_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

// ignore: must_be_immutable
class ChipsItemWidget extends StatelessWidget {
  ChipsItemWidget(this.chipsItemModelObj);

  ChipsItemModel chipsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          105,
        ),
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 16,
          top: 7,
          right: 16,
          bottom: 7,
        ),
        decoration: AppDecoration.txtOutlineIndigoA200.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder16,
        ),
        child: Text(
          chipsItemModelObj.buttonsmallTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtNotoSansSemiBold12.copyWith(
            letterSpacing: getHorizontalSize(
              0.14,
            ),
          ),
        ),
      ),
    );
  }
}
