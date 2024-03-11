import '../../../core/app_export.dart';/// This class is used in the [queue_item_widget] screen.
class QueueItemModel {QueueItemModel({this.image, this.podcastTitle, this.author, this.text, this.time, this.image1, this.image2, this.appleTalk, this.id, }) { image = image  ?? ImageConstant.imgImage80x80;podcastTitle = podcastTitle  ?? "837: Tristan Harris | Reclaiming Our Future with ...";author = author  ?? "Apple Talk";text = text  ?? "|";time = time  ?? "48:26 mins";image1 = image1  ?? ImageConstant.imgFavorite;image2 = image2  ?? ImageConstant.imgCategoriesPlaylist;appleTalk = appleTalk  ?? ImageConstant.imgIconlyLightOutlineArrowGray90001;id = id  ?? ""; }

String? image;

String? podcastTitle;

String? author;

String? text;

String? time;

String? image1;

String? image2;

String? appleTalk;

String? id;

 }
