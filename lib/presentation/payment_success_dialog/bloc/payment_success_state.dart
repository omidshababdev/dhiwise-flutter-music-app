// ignore_for_file: must_be_immutable

part of 'payment_success_bloc.dart';

/// Represents the state of PaymentSuccess in the application.
class PaymentSuccessState extends Equatable {
  PaymentSuccessState({this.paymentSuccessModelObj});

  PaymentSuccessModel? paymentSuccessModelObj;

  @override
  List<Object?> get props => [
        paymentSuccessModelObj,
      ];

  PaymentSuccessState copyWith({PaymentSuccessModel? paymentSuccessModelObj}) {
    return PaymentSuccessState(
      paymentSuccessModelObj:
          paymentSuccessModelObj ?? this.paymentSuccessModelObj,
    );
  }
}
