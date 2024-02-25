import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_outlined_button.dart';import 'bloc/playlist_details_bloc.dart';import 'models/playlist_details_model.dart';import 'models/playlistdetails_item_model.dart';import 'widgets/playlistdetails_item_widget.dart';class PlaylistDetailsScreen extends StatelessWidget {const PlaylistDetailsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PlaylistDetailsBloc>(create: (context) => PlaylistDetailsBloc(PlaylistDetailsState(playlistDetailsModelObj: PlaylistDetailsModel()))..add(PlaylistDetailsInitialEvent()), child: PlaylistDetailsScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(children: [_buildAutoLayoutHorizontal(context), SizedBox(height: 24.v), _buildShuffle(context), SizedBox(height: 24.v), Divider(), SizedBox(height: 23.v), _buildPlaylistDetails(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return SizedBox(height: 120.v, width: 371.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(top: 14.v), child: Text("msg_my_favorite_pop2".tr, style: theme.textTheme.headlineSmall))), Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage120x120, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 20.h, top: 55.v, bottom: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("lbl_playlist".tr, style: CustomTextStyles.titleSmallGray70001), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl".tr, style: CustomTextStyles.titleSmallGray70001)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_345_songs".tr, style: CustomTextStyles.titleSmallGray70001))]), SizedBox(height: 11.v), SizedBox(width: 168.h, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomImageView(imagePath: ImageConstant.imgCheckmarkGray90001, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(right: 12.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgLightBulb, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(horizontal: 12.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgCategoriesShare, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(horizontal: 12.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 12.h)))]))]))]))])); } 
/// Section Widget
Widget _buildShuffle(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(text: "lbl_shuffle".tr, margin: EdgeInsets.only(right: 6.h), leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgCategoriesshuffleComponentadditionalIcons, height: 20.adaptSize, width: 20.adaptSize)))), Expanded(child: CustomOutlinedButton(text: "lbl_play".tr, margin: EdgeInsets.only(left: 6.h), leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgOverflowmenu, height: 20.adaptSize, width: 20.adaptSize))))]); } 
/// Section Widget
Widget _buildPlaylistDetails(BuildContext context) { return BlocSelector<PlaylistDetailsBloc, PlaylistDetailsState, PlaylistDetailsModel?>(selector: (state) => state.playlistDetailsModelObj, builder: (context, playlistDetailsModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: playlistDetailsModelObj?.playlistdetailsItemList.length ?? 0, itemBuilder: (context, index) {PlaylistdetailsItemModel model = playlistDetailsModelObj?.playlistdetailsItemList[index] ?? PlaylistdetailsItemModel(); return PlaylistdetailsItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});}); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen); } 
 }
