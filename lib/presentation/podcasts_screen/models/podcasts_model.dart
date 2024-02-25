// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'popularpodcastslist_item_model.dart';import 'artistslist_item_model.dart';import 'explorepodcastsgrid_item_model.dart';/// This class defines the variables used in the [podcasts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastsModel extends Equatable {PodcastsModel({this.popularpodcastslistItemList = const [], this.artistslistItemList = const [], this.explorepodcastsgridItemList = const [], }) {  }

List<PopularpodcastslistItemModel> popularpodcastslistItemList;

List<ArtistslistItemModel> artistslistItemList;

List<ExplorepodcastsgridItemModel> explorepodcastsgridItemList;

PodcastsModel copyWith({List<PopularpodcastslistItemModel>? popularpodcastslistItemList, List<ArtistslistItemModel>? artistslistItemList, List<ExplorepodcastsgridItemModel>? explorepodcastsgridItemList, }) { return PodcastsModel(
popularpodcastslistItemList : popularpodcastslistItemList ?? this.popularpodcastslistItemList,
artistslistItemList : artistslistItemList ?? this.artistslistItemList,
explorepodcastsgridItemList : explorepodcastsgridItemList ?? this.explorepodcastsgridItemList,
); } 
@override List<Object?> get props => [popularpodcastslistItemList,artistslistItemList,explorepodcastsgridItemList];
 }
