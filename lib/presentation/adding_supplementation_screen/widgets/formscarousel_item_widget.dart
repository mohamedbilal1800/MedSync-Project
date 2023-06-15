import '../models/formscarousel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FormscarouselItemWidget extends StatelessWidget {
  FormscarouselItemWidget(this.formscarouselItemModelObj);

  FormscarouselItemModel formscarouselItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 64,
                width: 64,
                variant: IconButtonVariant.OutlineIndigoA200,
                child: CustomImageView(
                  svgPath: ImageConstant.imgLink,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  formscarouselItemModelObj.typeTxt,
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
        ),
      ),
    );
  }
}
