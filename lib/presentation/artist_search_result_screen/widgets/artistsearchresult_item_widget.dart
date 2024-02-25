import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';
import '../models/artistsearchresult_item_model.dart';

// ignore: must_be_immutable
class ArtistsearchresultItemWidget extends StatelessWidget {
  ArtistsearchresultItemWidget(
    this.artistsearchresultItemModelObj, {
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  ArtistsearchresultItemModel artistsearchresultItemModelObj;

  VoidCallback? onTapArtist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArtist!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: artistsearchresultItemModelObj?.theWeeknd,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 28.v,
              bottom: 29.v,
            ),
            child: Text(
              artistsearchresultItemModelObj.artistName!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCategoriesVerified,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 28.v,
              bottom: 29.v,
            ),
          ),
          Spacer(),
          _buildFollow(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 73.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.symmetric(vertical: 24.v),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
    );
  }
}
