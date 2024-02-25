// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcastsnotifications_item_model.dart';/// This class defines the variables used in the [podcasts_notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastsNotificationsModel extends Equatable {PodcastsNotificationsModel({this.podcastsnotificationsItemList = const []}) {  }

List<PodcastsnotificationsItemModel> podcastsnotificationsItemList;

PodcastsNotificationsModel copyWith({List<PodcastsnotificationsItemModel>? podcastsnotificationsItemList}) { return PodcastsNotificationsModel(
podcastsnotificationsItemList : podcastsnotificationsItemList ?? this.podcastsnotificationsItemList,
); } 
@override List<Object?> get props => [podcastsnotificationsItemList];
 }
