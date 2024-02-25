import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/popularartists_item_model.dart';

// ignore: must_be_immutable
class PopularartistsItemWidget extends StatelessWidget {
  PopularartistsItemWidget(
    this.popularartistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularartistsItemModel popularartistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: popularartistsItemModelObj?.arianaGrande,
          height: 188.v,
          width: 184.h,
          radius: BorderRadius.circular(
            92.h,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          popularartistsItemModelObj.artistsName!,
          style: CustomTextStyles.titleMedium_1,
        ),
      ],
    );
  }
}
