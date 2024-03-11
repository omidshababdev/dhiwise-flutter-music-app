import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_icon_button.dart';
import '../models/podcastsnotifications_item_model.dart';

// ignore: must_be_immutable
class PodcastsnotificationsItemWidget extends StatelessWidget {
  PodcastsnotificationsItemWidget(
    this.podcastsnotificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PodcastsnotificationsItemModel podcastsnotificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: podcastsnotificationsItemModelObj?.image,
          height: 116.adaptSize,
          width: 116.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 235.h,
              child: Text(
                podcastsnotificationsItemModelObj.tristanHarris!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Row(
              children: [
                Text(
                  podcastsnotificationsItemModelObj.appleTalk!,
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    podcastsnotificationsItemModelObj.text!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    podcastsnotificationsItemModelObj.time!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 248.h,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: podcastsnotificationsItemModelObj?.image1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                  ),
                  CustomImageView(
                    imagePath: podcastsnotificationsItemModelObj?.image2,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: podcastsnotificationsItemModelObj?.appleTalk1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: podcastsnotificationsItemModelObj?.appleTalk2,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    child: CustomImageView(
                      imagePath:
                          podcastsnotificationsItemModelObj?.iconlyBoldPlay,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
