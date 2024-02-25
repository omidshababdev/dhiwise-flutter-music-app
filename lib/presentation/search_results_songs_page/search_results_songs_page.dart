import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/search_results_songs_bloc.dart';import 'models/search_results_songs_model.dart';import 'models/searchresultssongs_item_model.dart';import 'widgets/searchresultssongs_item_widget.dart';class SearchResultsSongsPage extends StatefulWidget {const SearchResultsSongsPage({Key? key}) : super(key: key);

@override SearchResultsSongsPageState createState() =>  SearchResultsSongsPageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultsSongsBloc>(create: (context) => SearchResultsSongsBloc(SearchResultsSongsState(searchResultsSongsModelObj: SearchResultsSongsModel()))..add(SearchResultsSongsInitialEvent()), child: SearchResultsSongsPage()); } 
 }
class SearchResultsSongsPageState extends State<SearchResultsSongsPage> with  AutomaticKeepAliveClientMixin<SearchResultsSongsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultsSongs(context)])))); } 
/// Section Widget
Widget _buildSearchResultsSongs(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<SearchResultsSongsBloc, SearchResultsSongsState, SearchResultsSongsModel?>(selector: (state) => state.searchResultsSongsModelObj, builder: (context, searchResultsSongsModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: searchResultsSongsModelObj?.searchresultssongsItemList.length ?? 0, itemBuilder: (context, index) {SearchresultssongsItemModel model = searchResultsSongsModelObj?.searchresultssongsItemList[index] ?? SearchresultssongsItemModel(); return SearchresultssongsItemWidget(model, onTapSongTitle: () {onTapSongTitle(context);});});})); } 
/// Navigates to the songDetailsScreen when the action is triggered.
onTapSongTitle(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songDetailsScreen, ); } 
 }
