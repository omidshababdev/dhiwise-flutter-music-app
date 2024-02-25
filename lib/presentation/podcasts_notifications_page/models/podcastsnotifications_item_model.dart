import '../../../core/app_export.dart';/// This class is used in the [podcastsnotifications_item_widget] screen.
class PodcastsnotificationsItemModel {PodcastsnotificationsItemModel({this.image, this.tristanHarris, this.appleTalk, this.text, this.time, this.image1, this.image2, this.appleTalk1, this.appleTalk2, this.iconlyBoldPlay, this.id, }) { image = image  ?? ImageConstant.imgImage80x80;tristanHarris = tristanHarris  ?? "837: Tristan Harris | Reclaiming Our Future with ...";appleTalk = appleTalk  ?? "Apple Talk";text = text  ?? "|";time = time  ?? "48:26 mins";image1 = image1  ?? ImageConstant.imgFavorite;image2 = image2  ?? ImageConstant.imgCategoriesPlaylist;appleTalk1 = appleTalk1  ?? ImageConstant.imgIconlyLightOutlineArrowGray90001;appleTalk2 = appleTalk2  ?? ImageConstant.imgCategoriesMore;iconlyBoldPlay = iconlyBoldPlay  ?? ImageConstant.imgIconlyBoldPlay;id = id  ?? ""; }

String? image;

String? tristanHarris;

String? appleTalk;

String? text;

String? time;

String? image1;

String? image2;

String? appleTalk1;

String? appleTalk2;

String? iconlyBoldPlay;

String? id;

 }
