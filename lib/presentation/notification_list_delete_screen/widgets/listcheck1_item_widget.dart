import '../models/listcheck1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';
import 'package:medsync_project/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listcheck1ItemWidget extends StatelessWidget {
  Listcheck1ItemWidget(this.listcheck1ItemModelObj);

  Listcheck1ItemModel listcheck1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  top: 16,
                  right: 32,
                ),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      padding: IconButtonPadding.PaddingAll8,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheck,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          227,
                        ),
                        margin: getMargin(
                          left: 12,
                          top: 3,
                          bottom: 2,
                        ),
                        child: Text(
                          listcheck1ItemModelObj.reminderTxt,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoSansBold12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.indigo50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
