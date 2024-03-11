// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'artistdetails_item_model.dart';/// This class defines the variables used in the [artist_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistDetailsModel extends Equatable {ArtistDetailsModel({this.artistdetailsItemList = const []}) {  }

List<ArtistdetailsItemModel> artistdetailsItemList;

ArtistDetailsModel copyWith({List<ArtistdetailsItemModel>? artistdetailsItemList}) { return ArtistDetailsModel(
artistdetailsItemList : artistdetailsItemList ?? this.artistdetailsItemList,
); } 
@override List<Object?> get props => [artistdetailsItemList];
 }
