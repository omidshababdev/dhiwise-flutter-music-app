import '../../../core/app_export.dart';/// This class is used in the [albums_item_widget] screen.
class AlbumsItemModel {AlbumsItemModel({this.image, this.threeDimensions, this.details, this.text, this.zipcode, this.image1, this.id, }) { image = image  ?? ImageConstant.imgImage86;threeDimensions = threeDimensions  ?? "Three Dimensions Deep";details = details  ?? "Amber Mark";text = text  ?? "|";zipcode = zipcode  ?? "2022";image1 = image1  ?? ImageConstant.imgCategoriesMore;id = id  ?? ""; }

String? image;

String? threeDimensions;

String? details;

String? text;

String? zipcode;

String? image1;

String? id;

 }
