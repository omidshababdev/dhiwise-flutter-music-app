import '../../../core/app_export.dart';/// This class is used in the [searchresultssongs_item_widget] screen.
class SearchresultssongsItemModel {SearchresultssongsItemModel({this.image, this.songTitle, this.details, this.id, }) { image = image  ?? ImageConstant.imgImage54;songTitle = songTitle  ?? "Starboy";details = details  ?? "The Weeknd, Daft Punk";id = id  ?? ""; }

String? image;

String? songTitle;

String? details;

String? id;

 }
