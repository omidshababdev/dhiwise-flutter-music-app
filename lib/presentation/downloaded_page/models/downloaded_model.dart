// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'downloadedlist_item_model.dart';/// This class defines the variables used in the [downloaded_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadedModel extends Equatable {DownloadedModel({this.downloadedlistItemList = const []}) {  }

List<DownloadedlistItemModel> downloadedlistItemList;

DownloadedModel copyWith({List<DownloadedlistItemModel>? downloadedlistItemList}) { return DownloadedModel(
downloadedlistItemList : downloadedlistItemList ?? this.downloadedlistItemList,
); } 
@override List<Object?> get props => [downloadedlistItemList];
 }
