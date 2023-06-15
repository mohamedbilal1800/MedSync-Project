import 'package:flutter/material.dart';
import 'package:medsync_project/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.NotoSansRegular14:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.IBMPlexMonoMedium20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'IBM Plex Mono',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.IBMPlexMonoMedium20WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'IBM Plex Mono',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.NotoSansBold16:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.InterRegular14:
        return TextStyle(
          color: ColorConstant.black9005b,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NotoSansRegular14Bluegray900:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Noto Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray100,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillBluegray90001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineRed600:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.red600,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineIndigoA100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.indigoA100,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray100:
        return ColorConstant.gray50;
      case TextFormFieldVariant.FillBluegray90001:
        return ColorConstant.blueGray90001;
      case TextFormFieldVariant.OutlineBlack900:
        return ColorConstant.blueGray400;
      case TextFormFieldVariant.OutlineRed600:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineIndigoA100:
        return ColorConstant.gray50;
      default:
        return ColorConstant.indigoA200;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray100:
        return true;
      case TextFormFieldVariant.FillBluegray90001:
        return true;
      case TextFormFieldVariant.OutlineBlack900:
        return true;
      case TextFormFieldVariant.OutlineRed600:
        return true;
      case TextFormFieldVariant.OutlineIndigoA100:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          top: 17,
          right: 17,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          top: 14,
          right: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingT14_1:
        return getPadding(
          top: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case TextFormFieldPadding.PaddingT25:
        return getPadding(
          top: 25,
          bottom: 25,
        );
      case TextFormFieldPadding.PaddingT43:
        return getPadding(
          left: 12,
          top: 43,
          right: 12,
          bottom: 43,
        );
      case TextFormFieldPadding.PaddingT31:
        return getPadding(
          left: 12,
          top: 31,
          right: 12,
          bottom: 31,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder20,
  RoundedBorder14,
  RoundedBorder10,
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingAll17,
  PaddingT17,
  PaddingT14,
  PaddingT14_1,
  PaddingAll14,
  PaddingT25,
  PaddingT43,
  PaddingT31,
}

enum TextFormFieldVariant {
  None,
  FillIndigoA200,
  OutlineGray100,
  FillBluegray90001,
  OutlineBlack900,
  OutlineRed600,
  OutlineIndigoA100,
}

enum TextFormFieldFontStyle {
  NotoSansSemiBold16,
  NotoSansRegular14,
  IBMPlexMonoMedium20,
  IBMPlexMonoMedium20WhiteA700,
  NotoSansBold16,
  InterRegular14,
  NotoSansRegular14Bluegray900,
}
