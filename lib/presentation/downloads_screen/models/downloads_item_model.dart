import '../../../core/app_export.dart';/// This class is used in the [downloads_item_widget] screen.
class DownloadsItemModel {DownloadsItemModel({this.image, this.songTitle, this.details, this.id, }) { image = image  ?? ImageConstant.imgImage61;songTitle = songTitle  ?? "Starboy Speed Up";details = details  ?? "Just Lowkey";id = id  ?? ""; }

String? image;

String? songTitle;

String? details;

String? id;

 }
