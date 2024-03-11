import '../../../core/app_export.dart';/// This class is used in the [topchartslist_item_widget] screen.
class TopchartslistItemModel {TopchartslistItemModel({this.top, this.price, this.top1, this.price1, this.top2, this.price2, this.price3, this.id, }) { top = top  ?? ImageConstant.imgImage5;price = price  ?? "TOP 100";top1 = top1  ?? ImageConstant.imgImage6;price1 = price1  ?? "TOP 50";top2 = top2  ?? ImageConstant.imgImage7;price2 = price2  ?? "TOP 100";price3 = price3  ?? "TOP 100 - Global";id = id  ?? ""; }

String? top;

String? price;

String? top1;

String? price1;

String? top2;

String? price2;

String? price3;

String? id;

 }
