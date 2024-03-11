// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'artistsearchresult_item_model.dart';/// This class defines the variables used in the [artist_search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistSearchResultModel extends Equatable {ArtistSearchResultModel({this.artistsearchresultItemList = const []}) {  }

List<ArtistsearchresultItemModel> artistsearchresultItemList;

ArtistSearchResultModel copyWith({List<ArtistsearchresultItemModel>? artistsearchresultItemList}) { return ArtistSearchResultModel(
artistsearchresultItemList : artistsearchresultItemList ?? this.artistsearchresultItemList,
); } 
@override List<Object?> get props => [artistsearchresultItemList];
 }
