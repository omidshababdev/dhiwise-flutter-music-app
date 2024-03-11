import '../../../core/app_export.dart';/// This class is used in the [profiledetails_item_widget] screen.
class ProfiledetailsItemModel {ProfiledetailsItemModel({this.image, this.positions, this.id, }) { image = image  ?? ImageConstant.imgImage74;positions = positions  ?? "Ariana Grande - All \nSongs ";id = id  ?? ""; }

String? image;

String? positions;

String? id;

 }
