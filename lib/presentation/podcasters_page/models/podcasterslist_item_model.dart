import '../../../core/app_export.dart';/// This class is used in the [podcasterslist_item_widget] screen.
class PodcasterslistItemModel {PodcasterslistItemModel({this.image, this.artistName, this.episodesCounter, this.id, }) { image = image  ?? ImageConstant.imgImage80x80;artistName = artistName  ?? "The Jordan Harbinger Show";episodesCounter = episodesCounter  ?? "692 Episodes";id = id  ?? ""; }

String? image;

String? artistName;

String? episodesCounter;

String? id;

 }
