import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'package:dhiwise_flutter_music_app/widgets/custom_elevated_button.dart';import 'bloc/podcast_episode_details_bloc.dart';import 'models/podcast_episode_details_model.dart';class PodcastEpisodeDetailsScreen extends StatelessWidget {const PodcastEpisodeDetailsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PodcastEpisodeDetailsBloc>(create: (context) => PodcastEpisodeDetailsBloc(PodcastEpisodeDetailsState(podcastEpisodeDetailsModelObj: PodcastEpisodeDetailsModel()))..add(PodcastEpisodeDetailsInitialEvent()), child: PodcastEpisodeDetailsScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<PodcastEpisodeDetailsBloc, PodcastEpisodeDetailsState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 22.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAutoLayoutHorizontal(context), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Row(children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_1_day_ago".tr, style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h, top: 1.v), child: Text("lbl".tr, style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_48_26_mins".tr, style: CustomTextStyles.titleSmallGray70001Medium))])), SizedBox(height: 19.v), Container(width: 324.h, margin: EdgeInsets.only(left: 2.h, right: 57.h), child: Text("msg_691_shaquille_o_neal".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.20))), SizedBox(height: 14.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 16.v), Container(width: 354.h, margin: EdgeInsets.only(left: 2.h, right: 27.h), child: Text("msg_shaquille_o_neal".tr, maxLines: 6, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_what_we_discuss".tr, style: CustomTextStyles.titleMediumPrimary)), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 70.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 10.v, bottom: 32.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Expanded(child: Container(width: 299.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_the_real_world_experience".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))))])), SizedBox(height: 8.v), _buildView(context), SizedBox(height: 8.v), _buildView1(context), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(right: 45.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 10.v, bottom: 30.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Expanded(child: Container(width: 324.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_how_shaq_manages".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))))])), SizedBox(height: 9.v), Row(children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 8.v, bottom: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("msg_and_much_more_view".tr, style: CustomTextStyles.titleMediumPrimaryMedium16))])]))))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h, right: 37.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage54, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 23.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_the_jordan_harbinger2".tr, style: theme.textTheme.titleMedium), SizedBox(height: 13.v), Text("msg_jordan_harbinger".tr, style: theme.textTheme.labelLarge)]))])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 266.h, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomElevatedButton(height: 42.v, width: 107.h, text: "lbl_play".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgCategoriesplayComponentadditionalIcons, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapPlay(context);}), CustomImageView(imagePath: ImageConstant.imgFavorite, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 21.h, top: 7.v, bottom: 11.v)), Spacer(flex: 50), CustomImageView(imagePath: ImageConstant.imgCategoriesPlaylist, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 11.v)), Spacer(flex: 50), CustomImageView(imagePath: ImageConstant.imgLightBulb, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 11.v))])), CustomImageView(imagePath: ImageConstant.imgCategoriesShare, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 11.v)), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 7.v, bottom: 11.v))])); } 
/// Section Widget
Widget _buildView(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 18.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 11.v, bottom: 76.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Expanded(child: Container(width: 351.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_how_shaq_assembled".tr, maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))))])); } 
/// Section Widget
Widget _buildView1(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 18.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 11.v, bottom: 52.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Expanded(child: Container(width: 351.h, margin: EdgeInsets.only(left: 10.h), child: Text("msg_why_shaq_doesn_t".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))))])); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapPlay(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
