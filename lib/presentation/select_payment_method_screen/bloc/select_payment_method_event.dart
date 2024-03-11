// ignore_for_file: must_be_immutable

part of 'select_payment_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectPaymentMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectPaymentMethodEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SelectPaymentMethod widget is first created.
class SelectPaymentMethodInitialEvent extends SelectPaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
