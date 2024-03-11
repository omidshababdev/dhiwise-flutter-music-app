import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/searchnotfound_item_model.dart';

// ignore: must_be_immutable
class SearchnotfoundItemWidget extends StatelessWidget {
  SearchnotfoundItemWidget(
    this.searchnotfoundItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchnotfoundItemModel searchnotfoundItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 68.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Text(
            searchnotfoundItemModelObj.pillTab!,
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
        ),
      ),
    );
  }
}
