import '../../../core/app_export.dart';/// This class is used in the [songlist_item_widget] screen.
class SonglistItemModel {SonglistItemModel({this.handsome, this.songTitle, this.details, this.overflowMenu, this.handsome1, this.id, }) { handsome = handsome  ?? ImageConstant.imgImage27;songTitle = songTitle  ?? "HANDSOME";details = details  ?? "Warren Hue";overflowMenu = overflowMenu  ?? ImageConstant.imgOverflowMenuOnprimarycontainer;handsome1 = handsome1  ?? ImageConstant.imgCategoriesMore;id = id  ?? ""; }

String? handsome;

String? songTitle;

String? details;

String? overflowMenu;

String? handsome1;

String? id;

 }
