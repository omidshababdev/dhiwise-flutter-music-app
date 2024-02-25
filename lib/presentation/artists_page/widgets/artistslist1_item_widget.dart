import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/artistslist1_item_model.dart';

// ignore: must_be_immutable
class Artistslist1ItemWidget extends StatelessWidget {
  Artistslist1ItemWidget(
    this.artistslist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Artistslist1ItemModel artistslist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 198.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: artistslist1ItemModelObj?.theWeeknd,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  40.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artistslist1ItemModelObj.artistName!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      artistslist1ItemModelObj.songsCounter!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesMore,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 30.v),
        ),
      ],
    );
  }
}
