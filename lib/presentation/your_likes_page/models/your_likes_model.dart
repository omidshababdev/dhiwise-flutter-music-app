// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'yourlikes_item_model.dart';/// This class defines the variables used in the [your_likes_page],
/// and is typically used to hold data that is passed between different parts of the application.
class YourLikesModel extends Equatable {YourLikesModel({this.yourlikesItemList = const []}) {  }

List<YourlikesItemModel> yourlikesItemList;

YourLikesModel copyWith({List<YourlikesItemModel>? yourlikesItemList}) { return YourLikesModel(
yourlikesItemList : yourlikesItemList ?? this.yourlikesItemList,
); } 
@override List<Object?> get props => [yourlikesItemList];
 }
