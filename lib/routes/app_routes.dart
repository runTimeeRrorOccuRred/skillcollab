import 'package:go_router/go_router.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
// import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';
// import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/view/components/bottomNavigation.dart';
import 'package:skill_colab/view/components/video_player_page.dart';
import 'package:skill_colab/view/screens/ResetPassword/reset_password_view.dart';
import 'package:skill_colab/view/screens/analytics/analytics_view.dart';
import 'package:skill_colab/view/screens/auth/forgotPasswordPage/forgot_password_view.dart';
import 'package:skill_colab/view/screens/auth/signUp/signup_view.dart';
import 'package:skill_colab/view/screens/auth/signinPage/signin_view.dart';
import 'package:skill_colab/view/screens/auth/verification/verification_view.dart';
import 'package:skill_colab/view/screens/bannedUser/banned_user_view.dart';
import 'package:skill_colab/view/screens/chat/blocked_users/blocked_users_view.dart';
import 'package:skill_colab/view/screens/chat/chatSearchPage/chat_search_page_view.dart';
import 'package:skill_colab/view/screens/chat/chatroom/chat_view.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view.dart';
import 'package:skill_colab/view/screens/explore/searchExplore/explore_search_view.dart';
import 'package:skill_colab/view/screens/groups/addGroupRating/add_group_rating.dart';
import 'package:skill_colab/view/screens/groups/createGroup/addBankDetails/add_bank_details_view.dart';
import 'package:skill_colab/view/screens/groups/createGroup/addCardDetails/add_card_details_view.dart';
import 'package:skill_colab/view/screens/groups/createGroup/create_group_view.dart';
import 'package:skill_colab/view/screens/groups/editGroup/edit_group_view.dart';
import 'package:skill_colab/view/screens/groups/groupDescription/group_description_view.dart';
import 'package:skill_colab/view/screens/groups/groupDescription/premium_group_description_view.dart';
import 'package:skill_colab/view/screens/groups/groupDescription/private_group_description_view.dart';
import 'package:skill_colab/view/screens/groups/groupMembers/group_members_view.dart';
import 'package:skill_colab/view/screens/groups/groupRating/group_rating_view.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupSubscribers/premium_group_subscribers_view.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/search_post/search_post_view.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/search_post/search_question_view.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/search_post/search_tutorial_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/myGroups/folder/folder_view.dart';
import 'package:skill_colab/view/screens/myGroups/folderGroup/folder_group_view.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_interests_view.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_all.dart';
import 'package:skill_colab/view/screens/notifications/notification_chat_loader.dart';
import 'package:skill_colab/view/screens/notifications/notification_group_loader.dart';
import 'package:skill_colab/view/screens/notifications/toggle_notification_view.dart';
import 'package:skill_colab/view/screens/onboarding/onboarding_view.dart';
import 'package:skill_colab/view/screens/post/createPost/create_post_view.dart';
import 'package:skill_colab/view/screens/post/singlePost/deeplink_single_post_view.dart';
import 'package:skill_colab/view/screens/post/singlePost/single_post_view.dart';
import 'package:skill_colab/view/screens/privacyPolicy/privacy_policy_view.dart';
// import 'package:skill_colab/view/screens/post/singlePost/single_post_view.dart';
import 'package:skill_colab/view/screens/profile/editProfile/edit_profile_view.dart';
import 'package:skill_colab/view/screens/profile/profileMembers/profile_members_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/search_post_user_profile.dart/search_post_view.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/createQuestion/create_question_view.dart';
import 'package:skill_colab/view/screens/questionDetailsPage/question_details_view.dart';
import 'package:skill_colab/view/screens/search/search_view.dart';
import 'package:skill_colab/view/screens/settings/settings_view.dart';
import 'package:skill_colab/view/screens/splash/splash_view.dart';
import 'package:skill_colab/view/screens/termsOfService/terms_of_service_view.dart';
import 'package:skill_colab/view/screens/transactions/transaction_view.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/createTutorial/create_tutorial_view.dart';
import 'package:skill_colab/view/screens/tutorialDetailsPage/tutorial_detail_page_view.dart';
import 'package:skill_colab/view/screens/notifications/notifications_view.dart';

enum AppRoute {
  splash,
  onboarding,
  verification,
  signinView,
  forgotPasswordView,
  signupView,
  navigationView,
  dashboardView,
  profileView,
  myGroupsView,
  myGroupsViewAll,
  myInterestGroupsView,
  notificationGroupLoader,
  publicGroupProfileView,
  privateGroupProfileView,
  premiumGroupProfileView,
  createGroupView,
  editGroupView,
  settings,
  analytics,
  createPost,
  createTutorial,
  createQuestion,
  groupMembers,
  profileMembers,
  search,
  folderView,
  folderGroupView,
  bannedUser,
  exploreSearch,
  sinlgePost,
  addCardDetails,
  addBankDetails,
  groupDescription,
  privategroupDescription,
  premiumGroupDescription,
  chatRoomList,
  chatRoom,
  chatRoomSearch,
  editProfile,
  addGroupRating,
  groupRatingView,
  questionDetailView,
  tutorialDetailView,
  searchUserPostView,
  searchPostView,
  searchQuestionView,
  searchTutorialView,
  earningsView,
  toggleNotificationView,
  termsOfService,
  privacyPolicy,
  resetPassword,
  blockedChatUsers,
  premiumGroupSubscribers,
  chatroomLoader,
  videoPlayerPage,
  notificationsView,
  deepLinksinglePost
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onboarding',
    name: AppRoute.onboarding.name,
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
    path: '/chatroomLoader',
    name: AppRoute.chatroomLoader.name,
    builder: (context, state) {
      final String userId = state.extra!.toString();
      return NotificationChatLoader(userId: userId,);
    },
  ),
  GoRoute(
    path: '/notificationGroupLoader',
    name: AppRoute.notificationGroupLoader.name,
    builder: (context, state) {
      final String groupId = state.extra!.toString();
      return NotificationGroupLoader(groupId: groupId,);
    },
  ),
  GoRoute(
    path: '/videoPlayerPage',
    name: AppRoute.videoPlayerPage.name,
    builder: (context, state) {
      final String videoUrl = state.extra!.toString();
      return VideoPlayerPage(videoUrl: videoUrl,);
    },
  ),
  GoRoute(
    path: '/verification',
    name: AppRoute.verification.name,
    builder: (context, state) => const VerificationView(),
  ),
  GoRoute(
    path: '/signinView',
    name: AppRoute.signinView.name,
    builder: (context, state) => const SigninView(),
  ),
  GoRoute(
    path: '/folderView',
    name: AppRoute.folderView.name,
    builder: (context, state) => const FolderView(),
  ),
  GoRoute(
    path: '/forgotPasswordView',
    name: AppRoute.forgotPasswordView.name,
    builder: (context, state) => const ForgotPasswordView(),
  ),
  GoRoute(
    path: '/exploreSearch',
    name: AppRoute.exploreSearch.name,
    builder: (context, state) {
      final List<Interest?> data  = state.extra! as List<Interest?>;
      return ExploreSearchView(data : data);
    }, 
  ),
  GoRoute(
    path: '/signupView',
    name: AppRoute.signupView.name,
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: '/editProfile',
    name: AppRoute.editProfile.name,
    builder: (context, state) {
      final bool isSocialLogin = state.extra! as bool;
      return EditProfileView(isSocialLogin: isSocialLogin);
    },
  ),
  GoRoute(
    path: '/premiumGroupSubscribers',
    name: AppRoute.premiumGroupSubscribers.name,
    builder: (context, state) => const PremiumGroupSubscribers(),
  ),
  GoRoute(
    path: '/analytics',
    name: AppRoute.analytics.name,
    builder: (context, state) => const AnalyticsView(),
  ),
  GoRoute(
    path: '/navigationView',
    name: AppRoute.navigationView.name,
    builder: (context, state) => const BottomNavigation(),
  ),
  GoRoute(
    path: '/home/feeds/:data',
    // redirect: (context, state) => '/',
    name: AppRoute.deepLinksinglePost.name,
    builder: (context, state) {
      final String slugId = state.pathParameters['data']!.toString();
      return DeeplinkSinglePostView(slugId: slugId,);
    },
  ),
  GoRoute(
    path: '/chatroomList',
    name: AppRoute.chatRoomList.name,
    builder: (context, state) => const ChatroomListView(),
    routes: [
      GoRoute(
        path: 'chatroom',
        name: AppRoute.chatRoom.name,
        builder: (context, state) {
          final UserModel peerUserModel = state.extra! as UserModel;
          return ChatView(
            peerUserModel: peerUserModel,
          );
        },
      ),
      GoRoute(
        path: 'chatroomSearch',
        name: AppRoute.chatRoomSearch.name,
        builder: (context, state) {
          return const ChatSearchPageView();
        },
      ),
    ],
  ),
  GoRoute(
    path: '/dashboardView',
    name: AppRoute.dashboardView.name,
    builder: (context, state) => const DashboardView(),
  ),
  GoRoute(
    path: '/bannedUser',
    name: AppRoute.bannedUser.name,
    builder: (context, state) {
      return const BannedUserPage();
    },
  ),
  GoRoute(
      path: '/tutorialDetailView',
      name: AppRoute.tutorialDetailView.name,
      builder: (context, state) {
        final TutorialData data = state.extra! as TutorialData;
        return TutorialDetailsPage(tutorialDetail: data);
      },),
  GoRoute(
      path: '/profileView',
      name: AppRoute.profileView.name,
      builder: (context, state) {
        // final bool isSelfProfile = state.extra! as bool;
        // return  UserProfileView(isSelfProfile: isSelfProfile,);
        final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
        return UserProfileView(
          userId: args["userId"] ?? "",
          isSelfProfile: args["isSelfProfile"] ?? false,
        );
      },),
  GoRoute(
    path: '/groupMembers',
    name: AppRoute.groupMembers.name,
    builder: (context, state) {
      // final String groupId = state.extra.toString();
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return GroupMembersView(
        groupId: args["groupId"] ?? "",
        isSelfGroup: args["isSelfGroup"] ?? false,
        groupProfile: args["groupProfile"] ?? false,
      );
    },
  ),
  GoRoute(
    path: '/profileMembers',
    name: AppRoute.profileMembers.name,
    builder: (context, state) {
      final String userId = state.extra.toString();
      return ProfileMembersView(userId: userId,);
    },
  ),
  GoRoute(
    path: '/singlePost',
    name: AppRoute.sinlgePost.name,
    builder: (context, state) {
      final String postId = state.extra! as String;
      return SinglePostView(
        postId: postId,
      );
    },
  ),
  GoRoute(
      path: '/questionDetailView',
      name: AppRoute.questionDetailView.name,
      builder: (context, state) {
        final QuestionData data = state.extra! as QuestionData;
        return QuestionDetailsPage(questionDetail: data);
      },),
  GoRoute(
    path: '/createPost',
    name: AppRoute.createPost.name,
    builder: (context, state) {
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return CreatePostView(
        groupId: args["groupId"] ?? '',
        privacy : args["privacy"] ?? '',
      );
    },
  ),
  GoRoute(
    path: '/folderGroupView',
    name: AppRoute.folderGroupView.name,
    builder: (context, state){
      final String folderId = state.extra! as String;
      return FolderGroupView(folderId: folderId,);
    },
  ),
  GoRoute(
      path: '/createTutorial',
      name: AppRoute.createTutorial.name,
      builder: (context, state) {
        final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
        return CreateTutorialView(
          groupId: args["groupId"] ?? '',
          privacy : args["privacy"] ?? '',
        );
      },),
  GoRoute(
    path: '/createQuestion',
    name: AppRoute.createQuestion.name,
    builder: (context, state) {
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return CreateQuestionView(
        groupId: args["groupId"] ?? '',
        privacy : args["privacy"] ?? '',
        questionId: args["questionId"] ?? '',
        question: args["question"] ?? '',
        answer: args["answer"] ?? '',
      );
    },
  ),
  GoRoute(
    path: '/myGroupsView',
    name: AppRoute.myGroupsView.name,
    builder: (context, state) => const MyGroupsView(),
    routes: [
      GoRoute(
        path: 'settings',
        name: AppRoute.settings.name,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  ),
  GoRoute(
    path: '/editGroupView',
    name: AppRoute.editGroupView.name,
    builder: (context, state) {
      final GroupDatum groupDetails = state.extra! as GroupDatum;
      return EditGroupView(groupDetails: groupDetails);
    },
  ),
  GoRoute(
    path: '/myGroupsViewAll',
    name: AppRoute.myGroupsViewAll.name,
    builder: (context, state) => const MyGroupsViewAll(),
  ),
  GoRoute(
    path: '/myInterestGroupsView',
    name: AppRoute.myInterestGroupsView.name,
    builder: (context, state) => const MyGroupInterestView(),
  ),
  GoRoute(
    path: '/search',
    name: AppRoute.search.name,
    builder: (context, state) => const SearchView(),
  ),
  GoRoute(
    path: '/createGroupView',
    name: AppRoute.createGroupView.name,
    builder: (context, state) => const CreateGroupView(),
    routes: [
      GoRoute(
        path: 'addBankDetails',
        name: AppRoute.addBankDetails.name,
        builder: (context, state) => const AddBankDetailsView(),
      ),
      GoRoute(
        path: 'addCardDetails',
        name: AppRoute.addCardDetails.name,
        builder: (context, state) => const AddCardDetailsView(),
      ),
    ],
  ),
  GoRoute(
    path: '/publicGroupProfileView',
    name: AppRoute.publicGroupProfileView.name,
    builder: (context, state) {
      // final Group groupDetails = state.extra! as Group;
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return PublicGroupProfileView(
        groupDetails: args["groupDetails"] ?? const GroupDatum(),
        isSelfGroup: args["isSelfGroup"] ?? true,
      );
    },
    // routes: [
    // GoRoute(
    //   path: 'groupDescription',
    //   name: AppRoute.groupDescription.name,
    //   builder: (context, state) => const GroupDescriptionView(),
    // ),
    // ],
  ),
  GoRoute(
    path: '/privateGroupProfileView',
    name: AppRoute.privateGroupProfileView.name,
    builder: (context, state) {
      // final Group groupDetails = state.extra! as Group;
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return PrivateGroupProfileView(
        groupDetails: args["groupDetails"] ?? const GroupDatum(),
        isSelfGroup: args["isSelfGroup"] ?? true,
      );
    },
  ),
  GoRoute(
    path: '/premiumGroupProfileView',
    name: AppRoute.premiumGroupProfileView.name,
    builder: (context, state) {
      // final Group groupDetails = state.extra! as Group;
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return PremiumGroupProfileView(
        groupDetails: args["groupDetails"] ?? const GroupDatum(),
        isSelfGroup: args["isSelfGroup"] ?? true,
      );
    },
  ),
  GoRoute(
    path: '/addGroupRating',
    name: AppRoute.addGroupRating.name,
    builder: (context, state) {
      final String groupId = state.extra.toString();
      return AddGroupRating(
        groupId: groupId,
      );
    },
  ),
  GoRoute(
    path: '/groupRatingView',
    name: AppRoute.groupRatingView.name,
    builder: (context, state) {
      final Map<String, dynamic> args = state.extra! as Map<String, dynamic>;
      return GroupRatingView(
        groupId: args["groupId"],
        groupPrivacy: args["groupPrivacy"],
      );
    },
  ),
  GoRoute(
    path: '/groupDescription',
    name: AppRoute.groupDescription.name,
    builder: (context, state) {
      return const GroupDescriptionView();
    },
  ),
  GoRoute(
    path: '/privategroupDescription',
    name: AppRoute.privategroupDescription.name,
    builder: (context, state) => const PrivateGroupDescriptionView(),
  ),
  GoRoute(
    path: '/premiumGroupDescription',
    name: AppRoute.premiumGroupDescription.name,
    builder: (context, state) => const PremiumGroupDescriptionView(),
  ),
  GoRoute(
      path: '/searchPostView',
      name: AppRoute.searchPostView.name,
      builder: (context, state) {
        final Map<String, dynamic> extras =
            state.extra! as Map<String, dynamic>;
        final GetPostsByGroupModel data = extras['data'];

        final String groupId = extras['groupId'];
        
        return SearchPostView(
          groupId: groupId,
          postsByGroupModel: data,
        );
      },),
  GoRoute(
      path: '/searchUserPostView',
      name: AppRoute.searchUserPostView.name,
      builder: (context, state) {
        final Map<String, dynamic> extras =
            state.extra! as Map<String, dynamic>;
        final GetPostsByUserIdResponseModel data = extras['data'];

        final String userId = extras['userId'];

        return SearchUserPostView(
          userId: userId,
          getPostsByUserIdResponseModel: data,
        );
      },),
  GoRoute(
    path: '/searchQuestionView',
    name: AppRoute.searchQuestionView.name,
    builder: (context, state) {
      final String groupId = state.extra! as String;
      return SearchQuestionView(groupId: groupId);
    },
  ),
  GoRoute(
    path: '/searchTutorialView',
    name: AppRoute.searchTutorialView.name,
    builder: (context, state) {
      final String groupId = state.extra! as String;
      return SearchTutorialView(groupId: groupId);
    },
  ),


   GoRoute(
    path: '/earningsView',
    name: AppRoute.earningsView.name,
    builder: (context, state) => const TransactionView(),
  ),
  GoRoute(
    path: '/notificationsView',
    name: AppRoute.notificationsView.name,
    builder: (context, state) => const NotficationView(),
  ),
  GoRoute(
    path: '/toggleNotificationView',
    name: AppRoute.toggleNotificationView.name,
    builder: (context, state) => const ToggleNotificationView(),
  ),
   GoRoute(
    path: '/termsOfService',
    name: AppRoute.termsOfService.name,
    builder: (context, state) => const TermsOfService(),
  ),
   GoRoute(
    path: '/privacyPolicy',
    name: AppRoute.privacyPolicy.name,
    builder: (context, state) => const PrivacyPolicy(),
  ),
   GoRoute(
    path: '/resetPassword',
    name: AppRoute.resetPassword.name,
    builder: (context, state) => const ResetPassword(),
  ),
  GoRoute(
    path: '/blockedChatUsers',
    name: AppRoute.blockedChatUsers.name,
    builder: (context, state) => const BlockedUsersView(),
  ),
];
