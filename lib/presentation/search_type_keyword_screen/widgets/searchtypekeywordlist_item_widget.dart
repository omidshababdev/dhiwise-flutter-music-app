import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/searchtypekeywordlist_item_model.dart';

// ignore: must_be_immutable
class SearchtypekeywordlistItemWidget extends StatelessWidget {
  SearchtypekeywordlistItemWidget(
    this.searchtypekeywordlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchtypekeywordlistItemModel searchtypekeywordlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            searchtypekeywordlistItemModelObj.arianaGrande!,
            style: CustomTextStyles.titleMediumGray600,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
