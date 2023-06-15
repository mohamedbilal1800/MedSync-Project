import 'package:flutter/material.dart';
import 'package:medsync_project/presentation/welcome_screen/welcome_screen.dart';
import 'package:medsync_project/presentation/welcome_screen_spacing_screen/welcome_screen_spacing_screen.dart';
import 'package:medsync_project/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:medsync_project/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:medsync_project/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:medsync_project/presentation/login_two_screen/login_two_screen.dart';
import 'package:medsync_project/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:medsync_project/presentation/login_one_screen/login_one_screen.dart';
import 'package:medsync_project/presentation/password_remider_step_one_screen/password_remider_step_one_screen.dart';
import 'package:medsync_project/presentation/password_remider_step_two_screen/password_remider_step_two_screen.dart';
import 'package:medsync_project/presentation/password_remider_step_three_screen/password_remider_step_three_screen.dart';
import 'package:medsync_project/presentation/home_screen/home_screen.dart';
import 'package:medsync_project/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:medsync_project/presentation/profile_edit_form_screen/profile_edit_form_screen.dart';
import 'package:medsync_project/presentation/adding_supplementation_screen/adding_supplementation_screen.dart';
import 'package:medsync_project/presentation/compliance_historyone_screen/compliance_historyone_screen.dart';
import 'package:medsync_project/presentation/compliance_historytwo_screen/compliance_historytwo_screen.dart';
import 'package:medsync_project/presentation/compliance_historythree_screen/compliance_historythree_screen.dart';
import 'package:medsync_project/presentation/compliance_historyfour_screen/compliance_historyfour_screen.dart';
import 'package:medsync_project/presentation/compliance_historyfive_screen/compliance_historyfive_screen.dart';
import 'package:medsync_project/presentation/compliance_historysix_screen/compliance_historysix_screen.dart';
import 'package:medsync_project/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:medsync_project/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:medsync_project/presentation/android_large_eight_screen/android_large_eight_screen.dart';
import 'package:medsync_project/presentation/android_large_nine_screen/android_large_nine_screen.dart';
import 'package:medsync_project/presentation/android_large_ten_screen/android_large_ten_screen.dart';
import 'package:medsync_project/presentation/android_large_eleven_screen/android_large_eleven_screen.dart';
import 'package:medsync_project/presentation/med_finder_one_screen/med_finder_one_screen.dart';
import 'package:medsync_project/presentation/med_finder_two_screen/med_finder_two_screen.dart';
import 'package:medsync_project/presentation/side_effects_checkerone_screen/side_effects_checkerone_screen.dart';
import 'package:medsync_project/presentation/side_effects_checkertwo_screen/side_effects_checkertwo_screen.dart';
import 'package:medsync_project/presentation/settings_container_screen/settings_container_screen.dart';
import 'package:medsync_project/presentation/personal_data_one_screen/personal_data_one_screen.dart';
import 'package:medsync_project/presentation/personal_data_name_screen/personal_data_name_screen.dart';
import 'package:medsync_project/presentation/personal_data_e_mail_screen/personal_data_e_mail_screen.dart';
import 'package:medsync_project/presentation/change_password_screen/change_password_screen.dart';
import 'package:medsync_project/presentation/change_password_success_screen/change_password_success_screen.dart';
import 'package:medsync_project/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:medsync_project/presentation/notification_settings_spacing_screen/notification_settings_spacing_screen.dart';
import 'package:medsync_project/presentation/notification_list_screen/notification_list_screen.dart';
import 'package:medsync_project/presentation/notification_list_delete_screen/notification_list_delete_screen.dart';
import 'package:medsync_project/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:medsync_project/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String welcomeScreenSpacingScreen =
      '/welcome_screen_spacing_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String passwordRemiderStepOneScreen =
      '/password_remider_step_one_screen';

  static const String passwordRemiderStepTwoScreen =
      '/password_remider_step_two_screen';

  static const String passwordRemiderStepThreeScreen =
      '/password_remider_step_three_screen';

  static const String homeScreen = '/home_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileEditFormScreen = '/profile_edit_form_screen';

  static const String addingSupplementationScreen =
      '/adding_supplementation_screen';

  static const String complianceHistoryoneScreen =
      '/compliance_historyone_screen';

  static const String complianceHistorytwoScreen =
      '/compliance_historytwo_screen';

  static const String complianceHistorythreeScreen =
      '/compliance_historythree_screen';

  static const String complianceHistoryfourScreen =
      '/compliance_historyfour_screen';

  static const String complianceHistoryfiveScreen =
      '/compliance_historyfive_screen';

  static const String complianceHistorysixScreen =
      '/compliance_historysix_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String androidLargeEightScreen = '/android_large_eight_screen';

  static const String androidLargeNineScreen = '/android_large_nine_screen';

  static const String androidLargeTenScreen = '/android_large_ten_screen';

  static const String androidLargeElevenScreen = '/android_large_eleven_screen';

  static const String medFinderOneScreen = '/med_finder_one_screen';

  static const String medFinderTwoScreen = '/med_finder_two_screen';

  static const String sideEffectsCheckeroneScreen =
      '/side_effects_checkerone_screen';

  static const String sideEffectsCheckertwoScreen =
      '/side_effects_checkertwo_screen';

  static const String settingsPage = '/settings_page';

  static const String settingsContainerScreen = '/settings_container_screen';

  static const String personalDataOneScreen = '/personal_data_one_screen';

  static const String personalDataNameScreen = '/personal_data_name_screen';

  static const String personalDataEMailScreen = '/personal_data_e_mail_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String changePasswordSuccessScreen =
      '/change_password_success_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String notificationSettingsSpacingScreen =
      '/notification_settings_spacing_screen';

  static const String notificationListScreen = '/notification_list_screen';

  static const String notificationListDeleteScreen =
      '/notification_list_delete_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreen: WelcomeScreen.builder,
        welcomeScreenSpacingScreen: WelcomeScreenSpacingScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        loginTwoScreen: LoginTwoScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        passwordRemiderStepOneScreen: PasswordRemiderStepOneScreen.builder,
        passwordRemiderStepTwoScreen: PasswordRemiderStepTwoScreen.builder,
        passwordRemiderStepThreeScreen: PasswordRemiderStepThreeScreen.builder,
        homeScreen: HomeScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileEditFormScreen: ProfileEditFormScreen.builder,
        addingSupplementationScreen: AddingSupplementationScreen.builder,
        complianceHistoryoneScreen: ComplianceHistoryoneScreen.builder,
        complianceHistorytwoScreen: ComplianceHistorytwoScreen.builder,
        complianceHistorythreeScreen: ComplianceHistorythreeScreen.builder,
        complianceHistoryfourScreen: ComplianceHistoryfourScreen.builder,
        complianceHistoryfiveScreen: ComplianceHistoryfiveScreen.builder,
        complianceHistorysixScreen: ComplianceHistorysixScreen.builder,
        androidLargeSixScreen: AndroidLargeSixScreen.builder,
        androidLargeSevenScreen: AndroidLargeSevenScreen.builder,
        androidLargeEightScreen: AndroidLargeEightScreen.builder,
        androidLargeNineScreen: AndroidLargeNineScreen.builder,
        androidLargeTenScreen: AndroidLargeTenScreen.builder,
        androidLargeElevenScreen: AndroidLargeElevenScreen.builder,
        medFinderOneScreen: MedFinderOneScreen.builder,
        medFinderTwoScreen: MedFinderTwoScreen.builder,
        sideEffectsCheckeroneScreen: SideEffectsCheckeroneScreen.builder,
        sideEffectsCheckertwoScreen: SideEffectsCheckertwoScreen.builder,
        settingsContainerScreen: SettingsContainerScreen.builder,
        personalDataOneScreen: PersonalDataOneScreen.builder,
        personalDataNameScreen: PersonalDataNameScreen.builder,
        personalDataEMailScreen: PersonalDataEMailScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        changePasswordSuccessScreen: ChangePasswordSuccessScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        notificationSettingsSpacingScreen:
            NotificationSettingsSpacingScreen.builder,
        notificationListScreen: NotificationListScreen.builder,
        notificationListDeleteScreen: NotificationListDeleteScreen.builder,
        contactUsScreen: ContactUsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
