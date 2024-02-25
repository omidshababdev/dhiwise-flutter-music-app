import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'bloc/playback_bloc.dart';import 'models/playback_item_model.dart';import 'models/playback_model.dart';import 'widgets/playback_item_widget.dart';class PlaybackScreen extends StatelessWidget {const PlaybackScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PlaybackBloc>(create: (context) => PlaybackBloc(PlaybackState(playbackModelObj: PlaybackModel()))..add(PlaybackInitialEvent()), child: PlaybackScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 29.v), child: _buildPlayback(context))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "lbl_playback".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildPlayback(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<PlaybackBloc, PlaybackState, PlaybackModel?>(selector: (state) => state.playbackModelObj, builder: (context, playbackModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 25.v);}, itemCount: playbackModelObj?.playbackItemList.length ?? 0, itemBuilder: (context, index) {PlaybackItemModel model = playbackModelObj?.playbackItemList[index] ?? PlaybackItemModel(); return PlaybackItemWidget(model, changeSwitch: (value) {context.read<PlaybackBloc>().add(PlaybackItemEvent(index: index, isSelectedSwitch: value));});});})); } 
 }