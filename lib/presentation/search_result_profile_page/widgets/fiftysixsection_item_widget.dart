import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';
import '../models/fiftysixsection_item_model.dart';

// ignore: must_be_immutable
class FiftysixsectionItemWidget extends StatelessWidget {
  FiftysixsectionItemWidget(
    this.fiftysixsectionItemModelObj, {
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  FiftysixsectionItemModel fiftysixsectionItemModelObj;

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
            imagePath: fiftysixsectionItemModelObj?.jennyWilson,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fiftysixsectionItemModelObj.artistName!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  fiftysixsectionItemModelObj.followersCounter!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          _buildArtistSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArtistSection(BuildContext context) {
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
