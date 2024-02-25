// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'downloads_item_model.dart';/// This class defines the variables used in the [downloads_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadsModel extends Equatable {DownloadsModel({this.downloadsItemList = const []}) {  }

List<DownloadsItemModel> downloadsItemList;

DownloadsModel copyWith({List<DownloadsItemModel>? downloadsItemList}) { return DownloadsModel(
downloadsItemList : downloadsItemList ?? this.downloadsItemList,
); } 
@override List<Object?> get props => [downloadsItemList];
 }
