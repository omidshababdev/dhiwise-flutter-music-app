import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/trendingnow_item_model.dart';

// ignore: must_be_immutable
class TrendingnowItemWidget extends StatelessWidget {
  TrendingnowItemWidget(
    this.trendingnowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingnowItemModel trendingnowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: trendingnowItemModelObj?.image,
          height: 188.v,
          width: 184.h,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: 182.h,
          child: Text(
            trendingnowItemModelObj.loremIpsumDolor!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMedium_1.copyWith(
              height: 1.40,
            ),
          ),
        ),
      ],
    );
  }
}
