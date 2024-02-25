// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultplaylist_item_model.dart';/// This class defines the variables used in the [search_result_playlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultPlaylistModel extends Equatable {SearchResultPlaylistModel({this.searchresultplaylistItemList = const []}) {  }

List<SearchresultplaylistItemModel> searchresultplaylistItemList;

SearchResultPlaylistModel copyWith({List<SearchresultplaylistItemModel>? searchresultplaylistItemList}) { return SearchResultPlaylistModel(
searchresultplaylistItemList : searchresultplaylistItemList ?? this.searchresultplaylistItemList,
); } 
@override List<Object?> get props => [searchresultplaylistItemList];
 }
