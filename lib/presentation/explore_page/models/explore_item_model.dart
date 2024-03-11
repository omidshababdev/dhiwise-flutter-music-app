import '../../../core/app_export.dart';/// This class is used in the [explore_item_widget] screen.
class ExploreItemModel {ExploreItemModel({this.categories, this.charts, this.id, }) { categories = categories  ?? "Charts";charts = charts  ?? ImageConstant.imgImage91x81;id = id  ?? ""; }

String? categories;

String? charts;

String? id;

 }
