import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profiledetails_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/profile_details_screen/models/profile_details_model.dart';part 'profile_details_event.dart';part 'profile_details_state.dart';/// A bloc that manages the state of a ProfileDetails according to the event that is dispatched to it.
class ProfileDetailsBloc extends Bloc<ProfileDetailsEvent, ProfileDetailsState> {ProfileDetailsBloc(ProfileDetailsState initialState) : super(initialState) { on<ProfileDetailsInitialEvent>(_onInitialize); }

_onInitialize(ProfileDetailsInitialEvent event, Emitter<ProfileDetailsState> emit, ) async  { emit(state.copyWith(profileDetailsModelObj: state.profileDetailsModelObj?.copyWith(profiledetailsItemList: fillProfiledetailsItemList())));// TODO: implement Actions
 } 
List<ProfiledetailsItemModel> fillProfiledetailsItemList() { return [ProfiledetailsItemModel(image: ImageConstant.imgImage74, positions: "Ariana Grande - All \nSongs "), ProfiledetailsItemModel(image: ImageConstant.imgImage75, positions: "Ariana Grande - Top \nGreatest Hits")]; } 
 }
