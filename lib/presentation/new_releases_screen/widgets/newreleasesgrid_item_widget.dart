import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/newreleasesgrid_item_model.dart';

// ignore: must_be_immutable
class NewreleasesgridItemWidget extends StatelessWidget {
  NewreleasesgridItemWidget(
    this.newreleasesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleasesgridItemModel newreleasesgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: newreleasesgridItemModelObj?.pain,
          height: 184.adaptSize,
          width: 184.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          newreleasesgridItemModelObj.positions!,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 7.v),
        Text(
          newreleasesgridItemModelObj.arianaGrande!,
          style: CustomTextStyles.titleSmallGray70001,
        ),
      ],
    );
  }
}
