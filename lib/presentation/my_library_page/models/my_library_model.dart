// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'podcastlist_item_model.dart';/// This class defines the variables used in the [my_library_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLibraryModel extends Equatable {MyLibraryModel({this.podcastlistItemList = const []}) {  }

List<PodcastlistItemModel> podcastlistItemList;

MyLibraryModel copyWith({List<PodcastlistItemModel>? podcastlistItemList}) { return MyLibraryModel(
podcastlistItemList : podcastlistItemList ?? this.podcastlistItemList,
); } 
@override List<Object?> get props => [podcastlistItemList];
 }
