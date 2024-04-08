import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 213.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Container(
          height: 266.v,
          width: 213.h,
          decoration: AppDecoration.gradientOnPrimaryToOnPrimary2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Opacity(
                opacity: 0.1,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle265x213,
                  height: 265.v,
                  width: 213.h,
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 120.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCoffee21,
                        height: 128.v,
                        width: 131.h,
                      ),
                      SizedBox(height: 29.v),
                      Text(
                        userprofileItemModelObj.username!,
                        style: CustomTextStyles.titleMediumMedium,
                      ),
                      SizedBox(height: 4.v),
                      SizedBox(
                        height: 34.v,
                        width: 172.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                userprofileItemModelObj.coffeeDescripti!,
                                style: CustomTextStyles.bodySmallOnError,
                              ),
                            ),
                            CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup9,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 11.h),
                                child: Row(
                                  children: [
                                    Text(
                                      userprofileItemModelObj.rating!,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFill3720,
                                      height: 10.v,
                                      width: 11.h,
                                      margin: EdgeInsets.only(
                                        left: 3.h,
                                        bottom: 2.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        userprofileItemModelObj.ratingCount!,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
