import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "walkthrough".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.walkthroughScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Lets you in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.letsYouInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign In".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create New PIN".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPinScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Set Fingerprint".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setFingerprintScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Follow Artists".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.followArtistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FIlled OTP".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filledOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create New Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Podcasts Notifications - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .podcastsNotificationsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Trending Now".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.trendingNowScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popular Artists".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.popularArtistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Charts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chartsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Top Albums Global".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.topAlbumsGlobalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Podcasts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.podcastsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New Releases".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newReleasesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Type Keyword".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchTypeKeywordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Not Found".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchNotFoundScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Song Play".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.songPlayScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Search Results Songs - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .searchResultsSongsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Song Details".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.songDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Lyrics".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.lyricsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Artist Search Result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.artistSearchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Artist Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.artistDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "album details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.albumDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Result Podcast".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultPodcastScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Podcast Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.podcastDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Podcast Episode Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.podcastEpisodeDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Playlist Details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.playlistDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Search Result Profile - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .searchResultProfileTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History Podcast - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.historyPodcastTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Playlists".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.playlistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Playlist Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.playlistDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Downloads".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.downloadsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Your Likes - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.yourLikesTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Albums".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.albumsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Songs".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.songsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Artists - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.artistsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Subscribe".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.subscribeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add New Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addNewCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectPaymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment Summary".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentSummaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Audio & Video".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.audioVideoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Playback".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.playbackScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Data Saver & Storage".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.dataSaverStorageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Security".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.securityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
