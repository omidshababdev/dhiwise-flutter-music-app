import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/queue_bloc.dart';
import 'models/queue_item_model.dart';
import 'models/queue_model.dart';
import 'widgets/queue_item_widget.dart';

// ignore_for_file: must_be_immutable
class QueuePage extends StatefulWidget {
  const QueuePage({Key? key})
      : super(
          key: key,
        );

  @override
  QueuePageState createState() => QueuePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<QueueBloc>(
      create: (context) => QueueBloc(QueueState(
        queueModelObj: QueueModel(),
      ))
        ..add(QueueInitialEvent()),
      child: QueuePage(),
    );
  }
}

class QueuePageState extends State<QueuePage>
    with AutomaticKeepAliveClientMixin<QueuePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildQueue(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "lbl_recently_added".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildQueue(BuildContext context) {
    return BlocSelector<QueueBloc, QueueState, QueueModel?>(
      selector: (state) => state.queueModelObj,
      builder: (context, queueModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: queueModelObj?.queueItemList.length ?? 0,
          itemBuilder: (context, index) {
            QueueItemModel model =
                queueModelObj?.queueItemList[index] ?? QueueItemModel();
            return QueueItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
