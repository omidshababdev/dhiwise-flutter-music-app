import '../../../core/app_export.dart';/// This class is used in the [yourlikes_item_widget] screen.
class YourlikesItemModel {YourlikesItemModel({this.image, this.podcastTitle, this.author, this.text, this.time, this.image1, this.id, }) { image = image  ?? ImageConstant.imgImage80x80;podcastTitle = podcastTitle  ?? "837: Tristan Harris | Reclaiming Our Future with ...";author = author  ?? "Apple Talk";text = text  ?? "|";time = time  ?? "48:26 mins";image1 = image1  ?? ImageConstant.imgFavorite;id = id  ?? ""; }

String? image;

String? podcastTitle;

String? author;

String? text;

String? time;

String? image1;

String? id;

 }
