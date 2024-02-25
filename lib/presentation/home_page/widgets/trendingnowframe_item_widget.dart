import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/trendingnowframe_item_model.dart';

// ignore: must_be_immutable
class TrendingnowframeItemWidget extends StatelessWidget {
  TrendingnowframeItemWidget(
    this.trendingnowframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingnowframeItemModel trendingnowframeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: trendingnowframeItemModelObj?.image,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 139.h,
              child: Text(
                trendingnowframeItemModelObj.loremIpsumDolor!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMedium_1.copyWith(
                  height: 1.40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
