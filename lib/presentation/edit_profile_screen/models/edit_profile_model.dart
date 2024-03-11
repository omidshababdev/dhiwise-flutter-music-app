// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';/// This class defines the variables used in the [edit_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditProfileModel extends Equatable {EditProfileModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

EditProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return EditProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
