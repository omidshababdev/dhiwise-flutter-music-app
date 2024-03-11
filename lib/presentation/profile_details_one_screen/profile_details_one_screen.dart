import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_outlined_button.dart';import 'bloc/profile_details_one_bloc.dart';import 'models/profile_details_one_model.dart';import 'models/profiledetailslist_item_model.dart';import 'widgets/profiledetailslist_item_widget.dart';class ProfileDetailsOneScreen extends StatelessWidget {const ProfileDetailsOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileDetailsOneBloc>(create: (context) => ProfileDetailsOneBloc(ProfileDetailsOneState(profileDetailsOneModelObj: ProfileDetailsOneModel()))..add(ProfileDetailsOneInitialEvent()), child: ProfileDetailsOneScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 31.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgEllipse6, height: 250.adaptSize, width: 250.adaptSize, radius: BorderRadius.circular(125.h)), SizedBox(height: 22.v), Text("lbl_andrew_ainsley".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 16.v), CustomOutlinedButton(height: 45.v, width: 138.h, text: "lbl_edit_profile".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumPrimary_1, onPressed: () {onTapEditProfile(context);}), SizedBox(height: 20.v), Divider(), SizedBox(height: 19.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Column(children: [Text("lbl_2_739".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("lbl_followers".tr, style: CustomTextStyles.titleMediumGray70001Medium)])), Padding(padding: EdgeInsets.only(left: 70.h), child: Column(children: [Text("lbl_347".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 11.v), Text("lbl_following".tr, style: CustomTextStyles.titleMediumGray70001Medium)]))]), SizedBox(height: 19.v), Divider(), SizedBox(height: 30.v), _buildPlaylistRow(context), SizedBox(height: 21.v), _buildProfileDetailsList(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_profile".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyCurvedEdit, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildPlaylistRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_playlists".tr, style: theme.textTheme.headlineSmall)), Padding(padding: EdgeInsets.only(bottom: 10.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16))]); } 
/// Section Widget
Widget _buildProfileDetailsList(BuildContext context) { return SizedBox(height: 248.v, child: BlocSelector<ProfileDetailsOneBloc, ProfileDetailsOneState, ProfileDetailsOneModel?>(selector: (state) => state.profileDetailsOneModelObj, builder: (context, profileDetailsOneModelObj) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: profileDetailsOneModelObj?.profiledetailslistItemList.length ?? 0, itemBuilder: (context, index) {ProfiledetailslistItemModel model = profileDetailsOneModelObj?.profiledetailslistItemList[index] ?? ProfiledetailslistItemModel(); return ProfiledetailslistItemWidget(model);});})); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapEditProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
 }
