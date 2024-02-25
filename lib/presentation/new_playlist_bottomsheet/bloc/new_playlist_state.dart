// ignore_for_file: must_be_immutable

part of 'new_playlist_bloc.dart';

/// Represents the state of NewPlaylist in the application.
class NewPlaylistState extends Equatable {
  NewPlaylistState({
    this.labelEditTextController,
    this.dateEditTextController,
    this.selectedDropDownValue,
    this.newPlaylistModelObj,
  });

  TextEditingController? labelEditTextController;

  TextEditingController? dateEditTextController;

  SelectionPopupModel? selectedDropDownValue;

  NewPlaylistModel? newPlaylistModelObj;

  @override
  List<Object?> get props => [
        labelEditTextController,
        dateEditTextController,
        selectedDropDownValue,
        newPlaylistModelObj,
      ];

  NewPlaylistState copyWith({
    TextEditingController? labelEditTextController,
    TextEditingController? dateEditTextController,
    SelectionPopupModel? selectedDropDownValue,
    NewPlaylistModel? newPlaylistModelObj,
  }) {
    return NewPlaylistState(
      labelEditTextController:
          labelEditTextController ?? this.labelEditTextController,
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      newPlaylistModelObj: newPlaylistModelObj ?? this.newPlaylistModelObj,
    );
  }
}
