// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcastsshows_item_model.dart';import 'fiftynine_item_model.dart';/// This class defines the variables used in the [search_result_podcast_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultPodcastModel extends Equatable {SearchResultPodcastModel({this.podcastsshowsItemList = const [], this.fiftynineItemList = const [], }) {  }

List<PodcastsshowsItemModel> podcastsshowsItemList;

List<FiftynineItemModel> fiftynineItemList;

SearchResultPodcastModel copyWith({List<PodcastsshowsItemModel>? podcastsshowsItemList, List<FiftynineItemModel>? fiftynineItemList, }) { return SearchResultPodcastModel(
podcastsshowsItemList : podcastsshowsItemList ?? this.podcastsshowsItemList,
fiftynineItemList : fiftynineItemList ?? this.fiftynineItemList,
); } 
@override List<Object?> get props => [podcastsshowsItemList,fiftynineItemList];
 }
