// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'selectpaymentmethod_item_model.dart';/// This class defines the variables used in the [select_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectPaymentMethodModel extends Equatable {SelectPaymentMethodModel({this.selectpaymentmethodItemList = const []}) {  }

List<SelectpaymentmethodItemModel> selectpaymentmethodItemList;

SelectPaymentMethodModel copyWith({List<SelectpaymentmethodItemModel>? selectpaymentmethodItemList}) { return SelectPaymentMethodModel(
selectpaymentmethodItemList : selectpaymentmethodItemList ?? this.selectpaymentmethodItemList,
); } 
@override List<Object?> get props => [selectpaymentmethodItemList];
 }
