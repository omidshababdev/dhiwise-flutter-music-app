import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_icon_button.dart';
import '../models/songsnotifications_item_model.dart';

// ignore: must_be_immutable
class SongsnotificationsItemWidget extends StatelessWidget {
  SongsnotificationsItemWidget(
    this.songsnotificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SongsnotificationsItemModel songsnotificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: songsnotificationsItemModelObj?.today,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    songsnotificationsItemModelObj.today1!,
                    style: CustomTextStyles.labelLargeBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      songsnotificationsItemModelObj.text!,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      songsnotificationsItemModelObj.time!,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Text(
                songsnotificationsItemModelObj.breakmysoul!,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      songsnotificationsItemModelObj.beyonce!,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 1.v,
                    ),
                    child: Text(
                      songsnotificationsItemModelObj.text1!,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      songsnotificationsItemModelObj.album!,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(2.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconlyBoldPlay,
            ),
          ),
        ),
        CustomImageView(
          imagePath: songsnotificationsItemModelObj?.today2,
          height: 13.v,
          width: 3.h,
          margin: EdgeInsets.only(
            left: 28.h,
            top: 33.v,
            bottom: 33.v,
          ),
        ),
      ],
    );
  }
}
