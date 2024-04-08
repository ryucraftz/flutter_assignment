import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewfull2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Chipviewfull2ItemWidget extends StatelessWidget {
  Chipviewfull2ItemWidget(this.chipviewfull2ItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );

  Chipviewfull2ItemModel chipviewfull2ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewfull2ItemModelObj.full!,
        style: TextStyle(
          color: (chipviewfull2ItemModelObj.isSelected ?? false)
              ? appTheme.blueGray100
              : appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipviewfull2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100,
      selectedColor: appTheme.green500,
      shape: (chipviewfull2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                4.h,
              ))
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
