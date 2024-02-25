import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/search_result_top_bloc.dart';import 'models/search_result_top_model.dart';import 'models/songlist_item_model.dart';import 'models/teenagedreamlist_item_model.dart';import 'widgets/songlist_item_widget.dart';import 'widgets/teenagedreamlist_item_widget.dart';class SearchResultTopPage extends StatefulWidget {const SearchResultTopPage({Key? key}) : super(key: key);

@override SearchResultTopPageState createState() =>  SearchResultTopPageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultTopBloc>(create: (context) => SearchResultTopBloc(SearchResultTopState(searchResultTopModelObj: SearchResultTopModel()))..add(SearchResultTopInitialEvent()), child: SearchResultTopPage()); } 
 }
class SearchResultTopPageState extends State<SearchResultTopPage> with  AutomaticKeepAliveClientMixin<SearchResultTopPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildSongList(context), SizedBox(height: 16.v), _buildTeenageDreamList(context)]))]))))); } 
/// Section Widget
Widget _buildSongList(BuildContext context) { return BlocSelector<SearchResultTopBloc, SearchResultTopState, SearchResultTopModel?>(selector: (state) => state.searchResultTopModelObj, builder: (context, searchResultTopModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: searchResultTopModelObj?.songlistItemList.length ?? 0, itemBuilder: (context, index) {SonglistItemModel model = searchResultTopModelObj?.songlistItemList[index] ?? SonglistItemModel(); return SonglistItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});}); } 
/// Section Widget
Widget _buildTeenageDreamList(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 9.h), child: BlocSelector<SearchResultTopBloc, SearchResultTopState, SearchResultTopModel?>(selector: (state) => state.searchResultTopModelObj, builder: (context, searchResultTopModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: searchResultTopModelObj?.teenagedreamlistItemList.length ?? 0, itemBuilder: (context, index) {TeenagedreamlistItemModel model = searchResultTopModelObj?.teenagedreamlistItemList[index] ?? TeenagedreamlistItemModel(); return TeenagedreamlistItemWidget(model);});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
