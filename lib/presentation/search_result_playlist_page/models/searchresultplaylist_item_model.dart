import '../../../core/app_export.dart';/// This class is used in the [searchresultplaylist_item_widget] screen.
class SearchresultplaylistItemModel {SearchresultplaylistItemModel({this.image, this.positions, this.image1, this.positions1, this.id, }) { image = image  ?? ImageConstant.imgImage74;positions = positions  ?? "Ariana Grande - All \nSongs ";image1 = image1  ?? ImageConstant.imgImage75;positions1 = positions1  ?? "Ariana Grande - Top \nGreatest Hits";id = id  ?? ""; }

String? image;

String? positions;

String? image1;

String? positions1;

String? id;

 }
