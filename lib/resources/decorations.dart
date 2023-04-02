import 'package:flutter/material.dart';

import 'd_colors.dart';
import 'd_text_styles.dart';
import 'dimens.dart';

const _phoneInputBorder = UnderlineInputBorder(borderSide: BorderSide(color: DColors.grey2));

const _phoneErrorInputBorder = UnderlineInputBorder(borderSide: BorderSide(color: DColors.secondary));

final phoneInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.all(DDimens.s),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.phone.copyWith(color: DColors.grey3.withOpacity(0.5)),
  enabledBorder: _phoneInputBorder,
  errorBorder: _phoneErrorInputBorder,
  focusedErrorBorder: _phoneErrorInputBorder,
  disabledBorder: _phoneInputBorder,
  focusedBorder: _phoneInputBorder,
);

const _friendPhoneInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: DColors.grey2),
  borderRadius: BorderRadius.zero,
);

const _friendPhoneErrorInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: DColors.secondary),
  borderRadius: BorderRadius.zero,
);

final friendPhoneInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.all(DDimens.s),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.darkRegularText.copyWith(color: DColors.grey3.withOpacity(0.5)),
  enabledBorder: _friendPhoneInputBorder,
  errorBorder: _friendPhoneErrorInputBorder,
  focusedErrorBorder: _friendPhoneErrorInputBorder,
  disabledBorder: _friendPhoneInputBorder,
  focusedBorder: _friendPhoneInputBorder,
);

final hintInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.all(DDimens.s),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.code.copyWith(color: DColors.grey3.withOpacity(0.5)),
  enabledBorder: _phoneInputBorder,
  errorBorder: _phoneErrorInputBorder,
  focusedErrorBorder: _phoneErrorInputBorder,
  disabledBorder: _phoneInputBorder,
  focusedBorder: _phoneInputBorder,
);

const inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(DDimens.s),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.darkRegular,
  labelStyle: DTextStyles.darkRegular,
  enabledBorder: _phoneInputBorder,
  errorBorder: _phoneErrorInputBorder,
  focusedErrorBorder: _phoneErrorInputBorder,
  disabledBorder: _phoneInputBorder,
  focusedBorder: _phoneInputBorder,
);

const _ibanInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(DDimens.sm)), borderSide: BorderSide(color: DColors.grey2));

const ibanInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(DDimens.sm),
  alignLabelWithHint: true,
  hintStyle: DTextStyles.greyRegular,
  labelStyle: DTextStyles.darkRegular,
  enabledBorder: _ibanInputBorder,
  errorBorder: _ibanInputBorder,
  disabledBorder: _ibanInputBorder,
  focusedBorder: _ibanInputBorder,
  filled: true,
  fillColor: Colors.white,
);

const searchInputDecoration = InputDecoration(
  hintStyle: DTextStyles.darkRegular,
  prefixIconColor: DColors.dark,
  prefixIconConstraints: BoxConstraints(minWidth: 56),
  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(DDimens.l)), borderSide: BorderSide.none),
  contentPadding: EdgeInsets.only(),
);

const searchBarDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(DDimens.l)),
  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
);

const popupBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(DDimens.xl)),
  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
);

const cardDecoration = BoxDecoration(
  color: DColors.grey0,
  borderRadius: BorderRadius.all(Radius.circular(15)),
);

const warningDecoration = BoxDecoration(
  color: DColors.redBackground,
  borderRadius: BorderRadius.all(Radius.circular(DDimens.s)),
);

const bsBorderRadius = BorderRadius.only(topLeft: Radius.circular(DDimens.bs), topRight: Radius.circular(DDimens.bs));
const bsBorder = RoundedRectangleBorder(borderRadius: bsBorderRadius);
final bsDecoration = BoxDecoration(color: Colors.white, borderRadius: bsBorderRadius, boxShadow: [shadow]);

final shadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 3,
  offset: const Offset(0, -4),
);

const shadowDown = BoxShadow(color: DColors.barrier, spreadRadius: 1, blurRadius: 3, offset: Offset(0, 4));

ButtonStyle switchButton(double opacity) => TextButton.styleFrom(
      foregroundColor: DColors.dark.withOpacity(opacity),
      textStyle: DTextStyles.darkBoldText,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(DDimens.l))),
    );

// final bannerSliderOptions = CarouselOptions(aspectRatio: 2, viewportFraction: 1, autoPlay: true, disableCenter: true);

// final performanceSliderOptions = CarouselOptions(height: 128, viewportFraction: 1);
