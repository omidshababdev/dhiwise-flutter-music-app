// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'popularartists_item_model.dart';/// This class defines the variables used in the [popular_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopularArtistsModel extends Equatable {PopularArtistsModel({this.popularartistsItemList = const []}) {  }

List<PopularartistsItemModel> popularartistsItemList;

PopularArtistsModel copyWith({List<PopularartistsItemModel>? popularartistsItemList}) { return PopularArtistsModel(
popularartistsItemList : popularartistsItemList ?? this.popularartistsItemList,
); } 
@override List<Object?> get props => [popularartistsItemList];
 }
