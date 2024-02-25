import '../../../core/app_export.dart';/// This class is used in the [songs_item_widget] screen.
class SongsItemModel {SongsItemModel({this.image, this.songTitle, this.details, this.id, }) { image = image  ?? ImageConstant.imgImage61;songTitle = songTitle  ?? "Starboy Speed Up";details = details  ?? "Just Lowkey";id = id  ?? ""; }

String? image;

String? songTitle;

String? details;

String? id;

 }
