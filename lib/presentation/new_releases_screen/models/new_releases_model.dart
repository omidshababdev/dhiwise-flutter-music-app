// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'newreleaseslist_item_model.dart';import 'newreleasesgrid_item_model.dart';/// This class defines the variables used in the [new_releases_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewReleasesModel extends Equatable {NewReleasesModel({this.newreleaseslistItemList = const [], this.newreleasesgridItemList = const [], }) {  }

List<NewreleaseslistItemModel> newreleaseslistItemList;

List<NewreleasesgridItemModel> newreleasesgridItemList;

NewReleasesModel copyWith({List<NewreleaseslistItemModel>? newreleaseslistItemList, List<NewreleasesgridItemModel>? newreleasesgridItemList, }) { return NewReleasesModel(
newreleaseslistItemList : newreleaseslistItemList ?? this.newreleaseslistItemList,
newreleasesgridItemList : newreleasesgridItemList ?? this.newreleasesgridItemList,
); } 
@override List<Object?> get props => [newreleaseslistItemList,newreleasesgridItemList];
 }
