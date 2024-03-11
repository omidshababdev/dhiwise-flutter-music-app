import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/search_result_profile_bloc.dart';import 'models/fiftysixsection_item_model.dart';import 'models/followingsection_item_model.dart';import 'models/search_result_profile_model.dart';import 'widgets/fiftysixsection_item_widget.dart';import 'widgets/followingsection_item_widget.dart';class SearchResultProfilePage extends StatefulWidget {const SearchResultProfilePage({Key? key}) : super(key: key);

@override SearchResultProfilePageState createState() =>  SearchResultProfilePageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultProfileBloc>(create: (context) => SearchResultProfileBloc(SearchResultProfileState(searchResultProfileModelObj: SearchResultProfileModel()))..add(SearchResultProfileInitialEvent()), child: SearchResultProfilePage()); } 
 }
class SearchResultProfilePageState extends State<SearchResultProfilePage> with  AutomaticKeepAliveClientMixin<SearchResultProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFiftySixSection(context), SizedBox(height: 24.v), _buildFollowingSection(context)]))])))); } 
/// Section Widget
Widget _buildFiftySixSection(BuildContext context) { return BlocSelector<SearchResultProfileBloc, SearchResultProfileState, SearchResultProfileModel?>(selector: (state) => state.searchResultProfileModelObj, builder: (context, searchResultProfileModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: searchResultProfileModelObj?.fiftysixsectionItemList.length ?? 0, itemBuilder: (context, index) {FiftysixsectionItemModel model = searchResultProfileModelObj?.fiftysixsectionItemList[index] ?? FiftysixsectionItemModel(); return FiftysixsectionItemWidget(model, onTapArtist: () {onTapArtist(context);});});}); } 
/// Section Widget
Widget _buildFollowingSection(BuildContext context) { return BlocSelector<SearchResultProfileBloc, SearchResultProfileState, SearchResultProfileModel?>(selector: (state) => state.searchResultProfileModelObj, builder: (context, searchResultProfileModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: searchResultProfileModelObj?.followingsectionItemList.length ?? 0, itemBuilder: (context, index) {FollowingsectionItemModel model = searchResultProfileModelObj?.followingsectionItemList[index] ?? FollowingsectionItemModel(); return FollowingsectionItemWidget(model, onTapArtist: () {onTapArtist(context);});});}); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileDetailsScreen, ); } 
 }
