// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'artistslist1_item_model.dart';/// This class defines the variables used in the [artists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel extends Equatable {ArtistsModel({this.artistslist1ItemList = const []}) {  }

List<Artistslist1ItemModel> artistslist1ItemList;

ArtistsModel copyWith({List<Artistslist1ItemModel>? artistslist1ItemList}) { return ArtistsModel(
artistslist1ItemList : artistslist1ItemList ?? this.artistslist1ItemList,
); } 
@override List<Object?> get props => [artistslist1ItemList];
 }
