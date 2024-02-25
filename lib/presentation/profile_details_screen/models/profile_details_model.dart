// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'profiledetails_item_model.dart';/// This class defines the variables used in the [profile_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileDetailsModel extends Equatable {ProfileDetailsModel({this.profiledetailsItemList = const []}) {  }

List<ProfiledetailsItemModel> profiledetailsItemList;

ProfileDetailsModel copyWith({List<ProfiledetailsItemModel>? profiledetailsItemList}) { return ProfileDetailsModel(
profiledetailsItemList : profiledetailsItemList ?? this.profiledetailsItemList,
); } 
@override List<Object?> get props => [profiledetailsItemList];
 }
