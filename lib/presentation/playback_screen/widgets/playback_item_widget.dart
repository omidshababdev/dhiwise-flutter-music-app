import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_switch.dart';
import '../models/playback_item_model.dart';

// ignore: must_be_immutable
class PlaybackItemWidget extends StatelessWidget {
  PlaybackItemWidget(
    this.playbackItemModelObj, {
    Key? key,
    this.changeSwitch,
  }) : super(
          key: key,
        );

  PlaybackItemModel playbackItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playbackItemModelObj.automix!,
                style: CustomTextStyles.titleMediumSemiBold_1,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 272.h,
                child: Text(
                  playbackItemModelObj.allowsSeamless!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallMedium.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            left: 63.h,
            top: 20.v,
            bottom: 24.v,
          ),
          value: playbackItemModelObj.isSelectedSwitch!,
          onChange: (value) {
            changeSwitch?.call(value);
          },
        ),
      ],
    );
  }
}
