import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_outlined_button.dart';import 'bloc/follow_artists_bloc.dart';import 'models/follow_artists_model.dart';import 'models/followartistslist_item_model.dart';import 'widgets/followartistslist_item_widget.dart';class FollowArtistsScreen extends StatelessWidget {const FollowArtistsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FollowArtistsBloc>(create: (context) => FollowArtistsBloc(FollowArtistsState(followArtistsModelObj: FollowArtistsModel()))..add(FollowArtistsInitialEvent()), child: FollowArtistsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("msg_follow_your_favorite".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtistsList(context)])), bottomNavigationBar: _buildAutoLayoutVertical(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_follow_artists".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtistsList(BuildContext context) { return BlocSelector<FollowArtistsBloc, FollowArtistsState, FollowArtistsModel?>(selector: (state) => state.followArtistsModelObj, builder: (context, followArtistsModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: followArtistsModelObj?.followartistslistItemList.length ?? 0, itemBuilder: (context, index) {FollowartistslistItemModel model = followArtistsModelObj?.followartistslistItemList[index] ?? FollowartistslistItemModel(); return FollowartistslistItemWidget(model);});}); } 
/// Section Widget
Widget _buildSkipButton(BuildContext context) { return CustomOutlinedButton(width: 180.h, text: "lbl_skip".tr, onPressed: () {onTapSkipButton(context);}); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(width: 180.h, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinueButton(context);}); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkipButton(context), _buildContinueButton(context)])); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkipButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinueButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
 }
