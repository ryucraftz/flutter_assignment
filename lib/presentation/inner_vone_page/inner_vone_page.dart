import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/inner_vone_bloc.dart';
import 'models/inner_vone_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class InnerVonePage extends StatelessWidget {
  const InnerVonePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InnerVoneBloc>(
      create: (context) => InnerVoneBloc(InnerVoneState(
        innerVoneModelObj: InnerVoneModel(),
      ))
        ..add(InnerVoneInitialEvent()),
      child: InnerVonePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 803.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.1,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle888x430,
                  height: 888.v,
                  width: 430.h,
                  radius: BorderRadius.circular(
                    17.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppbar(context),
                      SizedBox(height: 35.v),
                      Expanded(
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: 831.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      right: 20.h,
                                    ),
                                    child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v,
                                      ),
                                      strokeWidth: 1.h,
                                      gradient: LinearGradient(
                                        begin: Alignment(0, 0),
                                        end: Alignment(0.97, 0.99),
                                        colors: [
                                          theme.colorScheme.onPrimary
                                              .withOpacity(0.5),
                                          theme.colorScheme.onPrimary
                                              .withOpacity(0.14),
                                          theme.colorScheme.onPrimary
                                              .withOpacity(0.38)
                                        ],
                                      ),
                                      corners: Corners(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                      ),
                                      child: Container(
                                        decoration: AppDecoration
                                            .gradientOnPrimaryToOnPrimary1
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder17,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: BlocSelector<
                                                  InnerVoneBloc,
                                                  InnerVoneState,
                                                  TextEditingController?>(
                                                selector: (state) =>
                                                    state.searchController,
                                                builder: (context,
                                                    searchController) {
                                                  return CustomSearchView(
                                                    controller:
                                                        searchController,
                                                    hintText:
                                                        "msg_search_favorite"
                                                            .tr,
                                                  );
                                                },
                                              ),
                                            ),
                                            SizedBox(height: 405.v),
                                            Text(
                                              "msg_get_it_instantly".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray40001,
                                            ),
                                            SizedBox(height: 8.v),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: _buildRowlatteOne(
                                                context,
                                                latteOne: "lbl_latt".tr,
                                                p49One: "lbl_4_9".tr,
                                                fourhundredfift: "lbl_458".tr,
                                                description:
                                                    "msg_caff_latte_is_a".tr,
                                                imageSix: ImageConstant
                                                    .imgRectangle10,
                                                addOne: "lbl_add".tr,
                                              ),
                                            ),
                                            SizedBox(height: 14.v),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: _buildRowlatteOne(
                                                context,
                                                latteOne: "lbl_flat_white".tr,
                                                p49One: "lbl_4_9".tr,
                                                fourhundredfift: "lbl_458".tr,
                                                description:
                                                    "msg_caff_latte_is_a".tr,
                                                imageSix: ImageConstant
                                                    .imgRectangle14,
                                                addOne: "lbl_add".tr,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                _buildStackcreatefrom(context)
                              ],
                            ),
                          ),
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

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWavingHandSign1f44b,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 7.v,
          bottom: 6.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_20_12_2022".tr,
              margin: EdgeInsets.only(right: 65.h),
            ),
            SizedBox(height: 4.v),
            AppbarTitle(
              text: "lbl_joshua_scanlan".tr,
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup3,
          margin: EdgeInsets.only(left: 22.h),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse3,
          margin: EdgeInsets.only(
            left: 10.h,
            right: 22.h,
            bottom: 1.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackcreatefrom(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 355.v,
        width: 550.h,
        margin: EdgeInsets.only(top: 82.v),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 355.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray90072,
                ),
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
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_most_popular_beverages".tr,
                        style: CustomTextStyles.titleMediumGray40001,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    SizedBox(
                      height: 266.v,
                      child: BlocSelector<InnerVoneBloc, InnerVoneState,
                          InnerVoneModel?>(
                        selector: (state) => state.innerVoneModelObj,
                        builder: (context, innerVoneModelObj) {
                          return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 15.h,
                              );
                            },
                            itemCount:
                                innerVoneModelObj?.userprofileItemList.length ??
                                    0,
                            itemBuilder: (context, index) {
                              UserprofileItemModel model = innerVoneModelObj
                                      ?.userprofileItemList[index] ??
                                  UserprofileItemModel();
                              return UserprofileItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRowlatteOne(
    BuildContext context, {
    required String latteOne,
    required String p49One,
    required String fourhundredfift,
    required String description,
    required String imageSix,
    required String addOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 31.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  latteOne,
                  style: CustomTextStyles.titleMediumMedium.copyWith(
                    color: appTheme.blueGray10001,
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text(
                      p49One,
                      style:
                          CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
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
                        fourhundredfift,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 16.h),
                    )
                  ],
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 202.h,
                  child: Text(
                    description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray40002.copyWith(
                      color: appTheme.gray40002,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 135.v,
            width: 119.h,
            margin: EdgeInsets.only(top: 12.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: imageSix,
                  height: 122.v,
                  width: 119.h,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 52.h,
                    margin: EdgeInsets.only(right: 30.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      addOne,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
