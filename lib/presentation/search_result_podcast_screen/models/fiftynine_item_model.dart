import '../../../core/app_export.dart';/// This class is used in the [fiftynine_item_widget] screen.
class FiftynineItemModel {FiftynineItemModel({this.image, this.podcastTitle, this.author, this.text, this.time, this.image1, this.appleTalk, this.id, }) { image = image  ?? ImageConstant.imgImage80x80;podcastTitle = podcastTitle  ?? "837: Tristan Harris | Reclaiming Our Future with ...";author = author  ?? "Apple Talk";text = text  ?? "|";time = time  ?? "48:26 mins";image1 = image1  ?? ImageConstant.imgFavorite;appleTalk = appleTalk  ?? ImageConstant.imgIconlyLightOutlineArrowGray9000120x20;id = id  ?? ""; }

String? image;

String? podcastTitle;

String? author;

String? text;

String? time;

String? image1;

String? appleTalk;

String? id;

 }
