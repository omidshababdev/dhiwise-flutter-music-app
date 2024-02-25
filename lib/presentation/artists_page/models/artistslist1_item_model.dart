import '../../../core/app_export.dart';/// This class is used in the [artistslist1_item_widget] screen.
class Artistslist1ItemModel {Artistslist1ItemModel({this.theWeeknd, this.artistName, this.songsCounter, this.id, }) { theWeeknd = theWeeknd  ?? ImageConstant.imgImage66;artistName = artistName  ?? "The Weeknd";songsCounter = songsCounter  ?? "20 Songs";id = id  ?? ""; }

String? theWeeknd;

String? artistName;

String? songsCounter;

String? id;

 }
