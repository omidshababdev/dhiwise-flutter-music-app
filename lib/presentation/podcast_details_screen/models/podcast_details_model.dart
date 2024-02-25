// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcastdetails_item_model.dart';/// This class defines the variables used in the [podcast_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastDetailsModel extends Equatable {PodcastDetailsModel({this.podcastdetailsItemList = const []}) {  }

List<PodcastdetailsItemModel> podcastdetailsItemList;

PodcastDetailsModel copyWith({List<PodcastdetailsItemModel>? podcastdetailsItemList}) { return PodcastDetailsModel(
podcastdetailsItemList : podcastdetailsItemList ?? this.podcastdetailsItemList,
); } 
@override List<Object?> get props => [podcastdetailsItemList];
 }
