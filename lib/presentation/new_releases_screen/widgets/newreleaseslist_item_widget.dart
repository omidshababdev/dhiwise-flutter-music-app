import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/newreleaseslist_item_model.dart';

// ignore: must_be_immutable
class NewreleaseslistItemWidget extends StatelessWidget {
  NewreleaseslistItemWidget(
    this.newreleaseslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleaseslistItemModel newreleaseslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: newreleaseslistItemModelObj?.positions,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            newreleaseslistItemModelObj.positions1!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            newreleaseslistItemModelObj.arianaGrande!,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ],
      ),
    );
  }
}
