import '../../../core/app_export.dart';/// This class is used in the [songplayoverscreen_item_widget] screen.
class SongplayoverscreenItemModel {SongplayoverscreenItemModel({this.image, this.songTitle, this.details, this.image1, this.image2, this.id, }) { image = image  ?? ImageConstant.imgImage60;songTitle = songTitle  ?? "Starboy";details = details  ?? "The Weeknd, Daft Punk";image1 = image1  ?? ImageConstant.imgIconlyBoldPlayOnprimarycontainer;image2 = image2  ?? ImageConstant.imgCategoriesMore;id = id  ?? ""; }

String? image;

String? songTitle;

String? details;

String? image1;

String? image2;

String? id;

 }
