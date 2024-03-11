import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_outlined_button.dart';
import 'bloc/logout_bloc.dart';
import 'models/logout_model.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutBloc>(
      create: (context) => LogoutBloc(LogoutState(
        logoutModelObj: LogoutModel(),
      ))
        ..add(LogoutInitialEvent()),
      child: LogoutBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "lbl_logout".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 25.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: CustomTextStyles.titleLargePrimary,
          ),
          SizedBox(height: 22.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 6.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_yes_logout".tr,
                  margin: EdgeInsets.only(left: 6.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}
