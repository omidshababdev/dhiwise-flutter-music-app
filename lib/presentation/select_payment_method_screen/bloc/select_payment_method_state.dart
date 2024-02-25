// ignore_for_file: must_be_immutable

part of 'select_payment_method_bloc.dart';

/// Represents the state of SelectPaymentMethod in the application.
class SelectPaymentMethodState extends Equatable {
  SelectPaymentMethodState({this.selectPaymentMethodModelObj});

  SelectPaymentMethodModel? selectPaymentMethodModelObj;

  @override
  List<Object?> get props => [
        selectPaymentMethodModelObj,
      ];

  SelectPaymentMethodState copyWith(
      {SelectPaymentMethodModel? selectPaymentMethodModelObj}) {
    return SelectPaymentMethodState(
      selectPaymentMethodModelObj:
          selectPaymentMethodModelObj ?? this.selectPaymentMethodModelObj,
    );
  }
}
