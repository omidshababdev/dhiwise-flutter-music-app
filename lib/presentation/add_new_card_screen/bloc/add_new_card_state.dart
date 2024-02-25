// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.cardNameController,
    this.cardNumberController,
    this.cvvController,
    this.addNewCardModelObj,
  });

  TextEditingController? cardNameController;

  TextEditingController? cardNumberController;

  TextEditingController? cvvController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        cardNameController,
        cardNumberController,
        cvvController,
        addNewCardModelObj,
      ];

  AddNewCardState copyWith({
    TextEditingController? cardNameController,
    TextEditingController? cardNumberController,
    TextEditingController? cvvController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      cardNameController: cardNameController ?? this.cardNameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
