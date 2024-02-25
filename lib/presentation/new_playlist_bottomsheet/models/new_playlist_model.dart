// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';/// This class defines the variables used in the [new_playlist_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPlaylistModel extends Equatable {NewPlaylistModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

NewPlaylistModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return NewPlaylistModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
