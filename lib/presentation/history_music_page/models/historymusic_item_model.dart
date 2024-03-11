import '../../../core/app_export.dart';/// This class is used in the [historymusic_item_widget] screen.
class HistorymusicItemModel {HistorymusicItemModel({this.image, this.songTitle, this.details, this.image1, this.id, }) { image = image  ?? ImageConstant.imgImage61;songTitle = songTitle  ?? "Starboy Speed Up";details = details  ?? "Just Lowkey";image1 = image1  ?? ImageConstant.imgCategoriesMore;id = id  ?? ""; }

String? image;

String? songTitle;

String? details;

String? image1;

String? id;

 }
