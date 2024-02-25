import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/search_result_playlist_bloc.dart';import 'models/search_result_playlist_model.dart';import 'models/searchresultplaylist_item_model.dart';import 'widgets/searchresultplaylist_item_widget.dart';class SearchResultPlaylistPage extends StatefulWidget {const SearchResultPlaylistPage({Key? key}) : super(key: key);

@override SearchResultPlaylistPageState createState() =>  SearchResultPlaylistPageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultPlaylistBloc>(create: (context) => SearchResultPlaylistBloc(SearchResultPlaylistState(searchResultPlaylistModelObj: SearchResultPlaylistModel()))..add(SearchResultPlaylistInitialEvent()), child: SearchResultPlaylistPage()); } 
 }
class SearchResultPlaylistPageState extends State<SearchResultPlaylistPage> with  AutomaticKeepAliveClientMixin<SearchResultPlaylistPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultPlaylist(context)])))); } 
/// Section Widget
Widget _buildSearchResultPlaylist(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<SearchResultPlaylistBloc, SearchResultPlaylistState, SearchResultPlaylistModel?>(selector: (state) => state.searchResultPlaylistModelObj, builder: (context, searchResultPlaylistModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 249.v, crossAxisCount: 1, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: searchResultPlaylistModelObj?.searchresultplaylistItemList.length ?? 0, itemBuilder: (context, index) {SearchresultplaylistItemModel model = searchResultPlaylistModelObj?.searchresultplaylistItemList[index] ?? SearchresultplaylistItemModel(); return SearchresultplaylistItemWidget(model, onTapCardBig: () {onTapCardBig(context);});});})); } 
/// Navigates to the playlistDetailsOneScreen when the action is triggered.
onTapCardBig(BuildContext context) { NavigatorService.pushNamed(AppRoutes.playlistDetailsOneScreen); } 
 }
