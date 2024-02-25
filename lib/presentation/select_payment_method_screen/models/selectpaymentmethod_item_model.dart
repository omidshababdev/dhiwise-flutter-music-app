import '../../../core/app_export.dart';/// This class is used in the [selectpaymentmethod_item_widget] screen.
class SelectpaymentmethodItemModel {SelectpaymentmethodItemModel({this.payPal, this.payPal1, this.id, }) { payPal = payPal  ?? ImageConstant.imgFrameLightBlue600;payPal1 = payPal1  ?? "PayPal";id = id  ?? ""; }

String? payPal;

String? payPal1;

String? id;

 }
