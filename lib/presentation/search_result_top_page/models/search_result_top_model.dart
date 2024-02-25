// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'songlist_item_model.dart';import 'teenagedreamlist_item_model.dart';/// This class defines the variables used in the [search_result_top_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultTopModel extends Equatable {SearchResultTopModel({this.songlistItemList = const [], this.teenagedreamlistItemList = const [], }) {  }

List<SonglistItemModel> songlistItemList;

List<TeenagedreamlistItemModel> teenagedreamlistItemList;

SearchResultTopModel copyWith({List<SonglistItemModel>? songlistItemList, List<TeenagedreamlistItemModel>? teenagedreamlistItemList, }) { return SearchResultTopModel(
songlistItemList : songlistItemList ?? this.songlistItemList,
teenagedreamlistItemList : teenagedreamlistItemList ?? this.teenagedreamlistItemList,
); } 
@override List<Object?> get props => [songlistItemList,teenagedreamlistItemList];
 }
