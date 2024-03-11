// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'queue_item_model.dart';/// This class defines the variables used in the [queue_page],
/// and is typically used to hold data that is passed between different parts of the application.
class QueueModel extends Equatable {QueueModel({this.queueItemList = const []}) {  }

List<QueueItemModel> queueItemList;

QueueModel copyWith({List<QueueItemModel>? queueItemList}) { return QueueModel(
queueItemList : queueItemList ?? this.queueItemList,
); } 
@override List<Object?> get props => [queueItemList];
 }
