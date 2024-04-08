import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewfull_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChipviewfullItemWidget extends StatelessWidget {
  ChipviewfullItemWidget(this.chipviewfullItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );

  ChipviewfullItemModel chipviewfullItemModelObj;

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
        chipviewfullItemModelObj.full!,
        style: TextStyle(
          color: (chipviewfullItemModelObj.isSelected ?? false)
              ? appTheme.blueGray100
              : appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipviewfullItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100,
      selectedColor: appTheme.green500,
      shape: (chipviewfullItemModelObj.isSelected ?? false)
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
