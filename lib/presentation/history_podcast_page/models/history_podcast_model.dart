// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'historypodcast_item_model.dart';/// This class defines the variables used in the [history_podcast_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryPodcastModel extends Equatable {HistoryPodcastModel({this.historypodcastItemList = const []}) {  }

List<HistorypodcastItemModel> historypodcastItemList;

HistoryPodcastModel copyWith({List<HistorypodcastItemModel>? historypodcastItemList}) { return HistoryPodcastModel(
historypodcastItemList : historypodcastItemList ?? this.historypodcastItemList,
); } 
@override List<Object?> get props => [historypodcastItemList];
 }
