// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcasterslist_item_model.dart';/// This class defines the variables used in the [podcasters_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastersModel extends Equatable {PodcastersModel({this.podcasterslistItemList = const []}) {  }

List<PodcasterslistItemModel> podcasterslistItemList;

PodcastersModel copyWith({List<PodcasterslistItemModel>? podcasterslistItemList}) { return PodcastersModel(
podcasterslistItemList : podcasterslistItemList ?? this.podcasterslistItemList,
); } 
@override List<Object?> get props => [podcasterslistItemList];
 }
