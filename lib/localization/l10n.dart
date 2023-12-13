// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Okay, cool!`
  String get OkayCool {
    return Intl.message(
      'Okay, cool!',
      name: 'OkayCool',
      desc: '',
      args: [],
    );
  }

  /// `Choose option`
  String get ChooseOption {
    return Intl.message(
      'Choose option',
      name: 'ChooseOption',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get SeeMore {
    return Intl.message(
      'See more',
      name: 'SeeMore',
      desc: '',
      args: [],
    );
  }

  /// `New place`
  String get NewPlace {
    return Intl.message(
      'New place',
      name: 'NewPlace',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Event`
  String get UpcomingEvent {
    return Intl.message(
      'Upcoming Event',
      name: 'UpcomingEvent',
      desc: '',
      args: [],
    );
  }

  /// `Tap to see more`
  String get TapToSeeMore {
    return Intl.message(
      'Tap to see more',
      name: 'TapToSeeMore',
      desc: '',
      args: [],
    );
  }

  /// `Select option`
  String get SelectOption {
    return Intl.message(
      'Select option',
      name: 'SelectOption',
      desc: '',
      args: [],
    );
  }

  /// `Point Balance`
  String get PointBalance {
    return Intl.message(
      'Point Balance',
      name: 'PointBalance',
      desc: '',
      args: [],
    );
  }

  /// `No preferences chosen`
  String get NoPreferencesChosen {
    return Intl.message(
      'No preferences chosen',
      name: 'NoPreferencesChosen',
      desc: '',
      args: [],
    );
  }

  /// `Ooops!`
  String get Ooops {
    return Intl.message(
      'Ooops!',
      name: 'Ooops',
      desc: '',
      args: [],
    );
  }

  /// `No photo here yet!`
  String get NoPhotoHereYet {
    return Intl.message(
      'No photo here yet!',
      name: 'NoPhotoHereYet',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get Off {
    return Intl.message(
      'Off',
      name: 'Off',
      desc: '',
      args: [],
    );
  }

  /// `Health Kit`
  String get HealthKit {
    return Intl.message(
      'Health Kit',
      name: 'HealthKit',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get Loading {
    return Intl.message(
      'Loading...',
      name: 'Loading',
      desc: '',
      args: [],
    );
  }

  /// `That's all for now!`
  String get ThatsAllForNow {
    return Intl.message(
      'That\'s all for now!',
      name: 'ThatsAllForNow',
      desc: '',
      args: [],
    );
  }

  /// `Weather`
  String get Weather {
    return Intl.message(
      'Weather',
      name: 'Weather',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get Follow {
    return Intl.message(
      'Follow',
      name: 'Follow',
      desc: '',
      args: [],
    );
  }

  /// `Members`
  String get Members {
    return Intl.message(
      'Members',
      name: 'Members',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Search {
    return Intl.message(
      'Search',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Directions`
  String get Directions {
    return Intl.message(
      'Directions',
      name: 'Directions',
      desc: '',
      args: [],
    );
  }

  /// `Tap it`
  String get TapIt {
    return Intl.message(
      'Tap it',
      name: 'TapIt',
      desc: '',
      args: [],
    );
  }

  /// `No health kit available on your device, so the result will be random`
  String get NoHealthKitAvailableOnYourDevice {
    return Intl.message(
      'No health kit available on your device, so the result will be random',
      name: 'NoHealthKitAvailableOnYourDevice',
      desc: '',
      args: [],
    );
  }

  /// `Invites you to`
  String get InvitesYouTo {
    return Intl.message(
      'Invites you to',
      name: 'InvitesYouTo',
      desc: '',
      args: [],
    );
  }

  /// `Invites {invitedPeopleCount} people to`
  String InvitesNPeopleTo(Object invitedPeopleCount) {
    return Intl.message(
      'Invites $invitedPeopleCount people to',
      name: 'InvitesNPeopleTo',
      desc: '',
      args: [invitedPeopleCount],
    );
  }

  /// `Not now`
  String get NotNow {
    return Intl.message(
      'Not now',
      name: 'NotNow',
      desc: '',
      args: [],
    );
  }

  /// `Go!`
  String get Go {
    return Intl.message(
      'Go!',
      name: 'Go',
      desc: '',
      args: [],
    );
  }

  /// `Invite more`
  String get InviteMore {
    return Intl.message(
      'Invite more',
      name: 'InviteMore',
      desc: '',
      args: [],
    );
  }

  /// `Сompany answered`
  String get CompanyAnswered {
    return Intl.message(
      'Сompany answered',
      name: 'CompanyAnswered',
      desc: '',
      args: [],
    );
  }

  /// `Helpful`
  String get Helpful {
    return Intl.message(
      'Helpful',
      name: 'Helpful',
      desc: '',
      args: [],
    );
  }

  /// `Helpful {helpfulCount}`
  String HelpfulNCount(Object helpfulCount) {
    return Intl.message(
      'Helpful $helpfulCount',
      name: 'HelpfulNCount',
      desc: '',
      args: [helpfulCount],
    );
  }

  /// `Ok`
  String get Ok {
    return Intl.message(
      'Ok',
      name: 'Ok',
      desc: '',
      args: [],
    );
  }

  /// `No, thx`
  String get NoThx {
    return Intl.message(
      'No, thx',
      name: 'NoThx',
      desc: '',
      args: [],
    );
  }

  /// `To access all`
  String get ToAccessAll {
    return Intl.message(
      'To access all',
      name: 'ToAccessAll',
      desc: '',
      args: [],
    );
  }

  /// `Features enable geolocation`
  String get FeaturesEnableGeolocation {
    return Intl.message(
      'Features enable geolocation',
      name: 'FeaturesEnableGeolocation',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get ForgotPassword {
    return Intl.message(
      'Forgot password',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect login or password`
  String get IncorrectLoginOrPassword {
    return Intl.message(
      'Incorrect login or password',
      name: 'IncorrectLoginOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Oops, I'll try again`
  String get OopsIWillTryAgain {
    return Intl.message(
      'Oops, I\'ll try again',
      name: 'OopsIWillTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your e-mail address`
  String get EnterYourEmailAddress {
    return Intl.message(
      'Enter your e-mail address',
      name: 'EnterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get ResetPassword {
    return Intl.message(
      'Reset password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `How much $ do you want to donate?`
  String get HowMuchDoYouWantToDonate {
    return Intl.message(
      'How much \$ do you want to donate?',
      name: 'HowMuchDoYouWantToDonate',
      desc: '',
      args: [],
    );
  }

  /// `Send it`
  String get SendIt {
    return Intl.message(
      'Send it',
      name: 'SendIt',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get GoToSettings {
    return Intl.message(
      'Go to settings',
      name: 'GoToSettings',
      desc: '',
      args: [],
    );
  }

  /// `To allow access to send push notifications, go to your phone settings`
  String get ToAllowAccessGoToSettings {
    return Intl.message(
      'To allow access to send push notifications, go to your phone settings',
      name: 'ToAllowAccessGoToSettings',
      desc: '',
      args: [],
    );
  }

  /// `We will let you know the results`
  String get WeWillLetKnowResults {
    return Intl.message(
      'We will let you know the results',
      name: 'WeWillLetKnowResults',
      desc: '',
      args: [],
    );
  }

  /// `Your claim has been sent`
  String get YourClaimHasBeenSent {
    return Intl.message(
      'Your claim has been sent',
      name: 'YourClaimHasBeenSent',
      desc: '',
      args: [],
    );
  }

  /// `Allowed caracters are {allowedCharacters}`
  String AllowedCaracters(Object allowedCharacters) {
    return Intl.message(
      'Allowed caracters are $allowedCharacters',
      name: 'AllowedCaracters',
      desc: '',
      args: [allowedCharacters],
    );
  }

  /// `Please select language`
  String get SelectLanguage {
    return Intl.message(
      'Please select language',
      name: 'SelectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Next >>>`
  String get NextWithChevrons {
    return Intl.message(
      'Next >>>',
      name: 'NextWithChevrons',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get Month {
    return Intl.message(
      'Month',
      name: 'Month',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get Year {
    return Intl.message(
      'Year',
      name: 'Year',
      desc: '',
      args: [],
    );
  }

  /// `Next {amountOfPeople} people`
  String NextNPeople(Object amountOfPeople) {
    return Intl.message(
      'Next $amountOfPeople people',
      name: 'NextNPeople',
      desc: '',
      args: [amountOfPeople],
    );
  }

  /// `Ask people`
  String get AskPeople {
    return Intl.message(
      'Ask people',
      name: 'AskPeople',
      desc: '',
      args: [],
    );
  }

  /// `Ask for donations`
  String get AskForDonations {
    return Intl.message(
      'Ask for donations',
      name: 'AskForDonations',
      desc: '',
      args: [],
    );
  }

  /// `Support people around you`
  String get SupportPeopleAroundYou {
    return Intl.message(
      'Support people around you',
      name: 'SupportPeopleAroundYou',
      desc: '',
      args: [],
    );
  }

  /// `Top {amountOfTopDonators} donators receive x{multiplier} points`
  String TopNDonatorsReceiveXPoints(
      Object amountOfTopDonators, Object multiplier) {
    return Intl.message(
      'Top $amountOfTopDonators donators receive x$multiplier points',
      name: 'TopNDonatorsReceiveXPoints',
      desc: '',
      args: [amountOfTopDonators, multiplier],
    );
  }

  /// `Tell us more{separator}about yourself`
  String TellUsMoreAboutYourself(Object separator) {
    return Intl.message(
      'Tell us more${separator}about yourself',
      name: 'TellUsMoreAboutYourself',
      desc: '',
      args: [separator],
    );
  }

  /// `Tap once to choose `
  String get TapOnceToChoose {
    return Intl.message(
      'Tap once to choose ',
      name: 'TapOnceToChoose',
      desc: '',
      args: [],
    );
  }

  /// `What you like`
  String get WhatYouLike {
    return Intl.message(
      'What you like',
      name: 'WhatYouLike',
      desc: '',
      args: [],
    );
  }

  /// `. Tap twice to mark your favorites.`
  String get TapTwiceToMarkYourFavorites {
    return Intl.message(
      '. Tap twice to mark your favorites.',
      name: 'TapTwiceToMarkYourFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Try\nyourself`
  String get TryYourself {
    return Intl.message(
      'Try\nyourself',
      name: 'TryYourself',
      desc: '',
      args: [],
    );
  }

  /// `Invite to favourite places`
  String get InviteToFavouritePlaces {
    return Intl.message(
      'Invite to favourite places',
      name: 'InviteToFavouritePlaces',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get Invite {
    return Intl.message(
      'Invite',
      name: 'Invite',
      desc: '',
      args: [],
    );
  }

  /// `Select date`
  String get SelectDate {
    return Intl.message(
      'Select date',
      name: 'SelectDate',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get Next {
    return Intl.message(
      'Next',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `By continuing you accept the `
  String get ByContinuingYouAcceptThe {
    return Intl.message(
      'By continuing you accept the ',
      name: 'ByContinuingYouAcceptThe',
      desc: '',
      args: [],
    );
  }

  /// ` And `
  String get AndWithWhitespaces {
    return Intl.message(
      ' And ',
      name: 'AndWithWhitespaces',
      desc: '',
      args: [],
    );
  }

  /// `Get code`
  String get GetCode {
    return Intl.message(
      'Get code',
      name: 'GetCode',
      desc: '',
      args: [],
    );
  }

  /// `Start to explore`
  String get StartToExplore {
    return Intl.message(
      'Start to explore',
      name: 'StartToExplore',
      desc: '',
      args: [],
    );
  }

  /// `Now let's get to know each other`
  String get NowLetsGetToKnowEachOther {
    return Intl.message(
      'Now let\'s get to know each other',
      name: 'NowLetsGetToKnowEachOther',
      desc: '',
      args: [],
    );
  }

  /// `The more info we get about you, the better`
  String get TheMoreInfoWeAboutYouGetTheBetter {
    return Intl.message(
      'The more info we get about you, the better',
      name: 'TheMoreInfoWeAboutYouGetTheBetter',
      desc: '',
      args: [],
    );
  }

  /// `Your leisure selection`
  String get YourLeisureSelection {
    return Intl.message(
      'Your leisure selection',
      name: 'YourLeisureSelection',
      desc: '',
      args: [],
    );
  }

  /// ` Will be.`
  String get WillBe {
    return Intl.message(
      ' Will be.',
      name: 'WillBe',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get Nickname {
    return Intl.message(
      'Nickname',
      name: 'Nickname',
      desc: '',
      args: [],
    );
  }

  /// `Describe yourself`
  String get DescribeYourself {
    return Intl.message(
      'Describe yourself',
      name: 'DescribeYourself',
      desc: '',
      args: [],
    );
  }

  /// `Select your religions`
  String get SelectYourReligions {
    return Intl.message(
      'Select your religions',
      name: 'SelectYourReligions',
      desc: '',
      args: [],
    );
  }

  /// `Your age`
  String get YourAge {
    return Intl.message(
      'Your age',
      name: 'YourAge',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get Gender {
    return Intl.message(
      'Gender',
      name: 'Gender',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get Confirm {
    return Intl.message(
      'Confirm',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please select a gender`
  String get PleaseSelectGender {
    return Intl.message(
      'Please select a gender',
      name: 'PleaseSelectGender',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least {religionCount} religion`
  String PleaseSelectAtLeastNReligion(Object religionCount) {
    return Intl.message(
      'Please select at least $religionCount religion',
      name: 'PleaseSelectAtLeastNReligion',
      desc: '',
      args: [religionCount],
    );
  }

  /// `Please select one type`
  String get PleaseSelectOneType {
    return Intl.message(
      'Please select one type',
      name: 'PleaseSelectOneType',
      desc: '',
      args: [],
    );
  }

  /// `This is `
  String get ThisIs {
    return Intl.message(
      'This is ',
      name: 'ThisIs',
      desc: '',
      args: [],
    );
  }

  /// `Smart leisure selection for everyone, everywhere.`
  String get SmartLeisureSelection {
    return Intl.message(
      'Smart leisure selection for everyone, everywhere.',
      name: 'SmartLeisureSelection',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get Welcome {
    return Intl.message(
      'Welcome',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get GetStarted {
    return Intl.message(
      'Get started',
      name: 'GetStarted',
      desc: '',
      args: [],
    );
  }

  /// `What is \n`
  String get WhatIs {
    return Intl.message(
      'What is \n',
      name: 'WhatIs',
      desc: '',
      args: [],
    );
  }

  /// `For`
  String get For {
    return Intl.message(
      'For',
      name: 'For',
      desc: '',
      args: [],
    );
  }

  /// `Through a non-\naggregator system \nespecially for you`
  String get ThroughANonAggregatorSystem {
    return Intl.message(
      'Through a non-\naggregator system \nespecially for you',
      name: 'ThroughANonAggregatorSystem',
      desc: '',
      args: [],
    );
  }

  /// `With your\npreferences`
  String get WithYourPreferences {
    return Intl.message(
      'With your\npreferences',
      name: 'WithYourPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Don't be alone`
  String get DontBeAlone {
    return Intl.message(
      'Don\'t be alone',
      name: 'DontBeAlone',
      desc: '',
      args: [],
    );
  }

  /// `Lovely-touch amazing\ninteraction`
  String get LovelyTouchAmazingInteraction {
    return Intl.message(
      'Lovely-touch amazing\ninteraction',
      name: 'LovelyTouchAmazingInteraction',
      desc: '',
      args: [],
    );
  }

  /// `Selection of the best`
  String get SelectionOfTheBest {
    return Intl.message(
      'Selection of the best',
      name: 'SelectionOfTheBest',
      desc: '',
      args: [],
    );
  }

  /// `\nfree places`
  String get FreePlaces {
    return Intl.message(
      '\nfree places',
      name: 'FreePlaces',
      desc: '',
      args: [],
    );
  }

  /// `Top places rated\nby`
  String get TopPlacesRatedBy {
    return Intl.message(
      'Top places rated\nby',
      name: 'TopPlacesRatedBy',
      desc: '',
      args: [],
    );
  }

  /// `You’ll find it`
  String get YoullFindIt {
    return Intl.message(
      'You’ll find it',
      name: 'YoullFindIt',
      desc: '',
      args: [],
    );
  }

  /// `Describe your claim`
  String get DescribeYourClaim {
    return Intl.message(
      'Describe your claim',
      name: 'DescribeYourClaim',
      desc: '',
      args: [],
    );
  }

  /// `Your name`
  String get YourName {
    return Intl.message(
      'Your name',
      name: 'YourName',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get YourEmail {
    return Intl.message(
      'Your email',
      name: 'YourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Describe your issue`
  String get DescribeYourIssue {
    return Intl.message(
      'Describe your issue',
      name: 'DescribeYourIssue',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get Send {
    return Intl.message(
      'Send',
      name: 'Send',
      desc: '',
      args: [],
    );
  }

  /// `Invite people`
  String get InvitePeople {
    return Intl.message(
      'Invite people',
      name: 'InvitePeople',
      desc: '',
      args: [],
    );
  }

  /// `You sent an invitation to {amountOfInvitedPersons} people`
  String YouSentInvitationToNPeople(Object amountOfInvitedPersons) {
    return Intl.message(
      'You sent an invitation to $amountOfInvitedPersons people',
      name: 'YouSentInvitationToNPeople',
      desc: '',
      args: [amountOfInvitedPersons],
    );
  }

  /// `Invitations can be viewed in private messages`
  String get InvitationsCanBeViewedInPrivateMessages {
    return Intl.message(
      'Invitations can be viewed in private messages',
      name: 'InvitationsCanBeViewedInPrivateMessages',
      desc: '',
      args: [],
    );
  }

  /// `Delete from list`
  String get DeleteFromList {
    return Intl.message(
      'Delete from list',
      name: 'DeleteFromList',
      desc: '',
      args: [],
    );
  }

  /// `Add yourself to list`
  String get AddYourselfToList {
    return Intl.message(
      'Add yourself to list',
      name: 'AddYourselfToList',
      desc: '',
      args: [],
    );
  }

  /// `No date selected`
  String get NoDateSelected {
    return Intl.message(
      'No date selected',
      name: 'NoDateSelected',
      desc: '',
      args: [],
    );
  }

  /// `Describe your wishes`
  String get DescribeYourWishes {
    return Intl.message(
      'Describe your wishes',
      name: 'DescribeYourWishes',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out your wishes`
  String get PleaseFillOutYourWishes {
    return Intl.message(
      'Please fill out your wishes',
      name: 'PleaseFillOutYourWishes',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out date`
  String get PleaseFillOutDate {
    return Intl.message(
      'Please fill out date',
      name: 'PleaseFillOutDate',
      desc: '',
      args: [],
    );
  }

  /// `Type here`
  String get TypeHere {
    return Intl.message(
      'Type here',
      name: 'TypeHere',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get SeeAll {
    return Intl.message(
      'See all',
      name: 'SeeAll',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get EditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'EditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Change photo`
  String get ChangePhoto {
    return Intl.message(
      'Change photo',
      name: 'ChangePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Premium`
  String get Premium {
    return Intl.message(
      'Premium',
      name: 'Premium',
      desc: '',
      args: [],
    );
  }

  /// `Pro`
  String get Pro {
    return Intl.message(
      'Pro',
      name: 'Pro',
      desc: '',
      args: [],
    );
  }

  /// `Be in search`
  String get BeInSearch {
    return Intl.message(
      'Be in search',
      name: 'BeInSearch',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get DateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'DateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Activity type`
  String get ActivityType {
    return Intl.message(
      'Activity type',
      name: 'ActivityType',
      desc: '',
      args: [],
    );
  }

  /// `Preferences`
  String get Preferences {
    return Intl.message(
      'Preferences',
      name: 'Preferences',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get Balance {
    return Intl.message(
      'Balance',
      name: 'Balance',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get Details {
    return Intl.message(
      'Details',
      name: 'Details',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get Points {
    return Intl.message(
      'Points',
      name: 'Points',
      desc: '',
      args: [],
    );
  }

  /// `Spent`
  String get Spent {
    return Intl.message(
      'Spent',
      name: 'Spent',
      desc: '',
      args: [],
    );
  }

  /// `Followings`
  String get Followings {
    return Intl.message(
      'Followings',
      name: 'Followings',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get Followers {
    return Intl.message(
      'Followers',
      name: 'Followers',
      desc: '',
      args: [],
    );
  }

  /// `Nothing found`
  String get NothingFound {
    return Intl.message(
      'Nothing found',
      name: 'NothingFound',
      desc: '',
      args: [],
    );
  }

  /// `Find someone to hang out with`
  String get FindSomeoneToHangOutWith {
    return Intl.message(
      'Find someone to hang out with',
      name: 'FindSomeoneToHangOutWith',
      desc: '',
      args: [],
    );
  }

  /// `{placeIndex} place`
  String NPlace(Object placeIndex) {
    return Intl.message(
      '$placeIndex place',
      name: 'NPlace',
      desc: '',
      args: [placeIndex],
    );
  }

  /// `My events`
  String get MyEvents {
    return Intl.message(
      'My events',
      name: 'MyEvents',
      desc: '',
      args: [],
    );
  }

  /// `Ask or support`
  String get AskOrSupport {
    return Intl.message(
      'Ask or support',
      name: 'AskOrSupport',
      desc: '',
      args: [],
    );
  }

  /// `Fulfill the dream`
  String get FulfillTheDream {
    return Intl.message(
      'Fulfill the dream',
      name: 'FulfillTheDream',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get Support {
    return Intl.message(
      'Support',
      name: 'Support',
      desc: '',
      args: [],
    );
  }

  /// `Enable hint system`
  String get EnableHintSystem {
    return Intl.message(
      'Enable hint system',
      name: 'EnableHintSystem',
      desc: '',
      args: [],
    );
  }

  /// `Faq`
  String get Faq {
    return Intl.message(
      'Faq',
      name: 'Faq',
      desc: '',
      args: [],
    );
  }

  /// `Will be implemented soon`
  String get WillBeImplementedSoon {
    return Intl.message(
      'Will be implemented soon',
      name: 'WillBeImplementedSoon',
      desc: '',
      args: [],
    );
  }

  /// `Your niche`
  String get YourNiche {
    return Intl.message(
      'Your niche',
      name: 'YourNiche',
      desc: '',
      args: [],
    );
  }

  /// `Don't miss it`
  String get DontMissIt {
    return Intl.message(
      'Don\'t miss it',
      name: 'DontMissIt',
      desc: '',
      args: [],
    );
  }

  /// `How’re you feeling tonight?`
  String get HowAreYouFeelingTonight {
    return Intl.message(
      'How’re you feeling tonight?',
      name: 'HowAreYouFeelingTonight',
      desc: '',
      args: [],
    );
  }

  /// `Guess`
  String get Guess {
    return Intl.message(
      'Guess',
      name: 'Guess',
      desc: '',
      args: [],
    );
  }

  /// `You better check this out`
  String get YouBetterCheckThisOut {
    return Intl.message(
      'You better check this out',
      name: 'YouBetterCheckThisOut',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get Favorites {
    return Intl.message(
      'Favorites',
      name: 'Favorites',
      desc: '',
      args: [],
    );
  }

  /// `Small`
  String get Small {
    return Intl.message(
      'Small',
      name: 'Small',
      desc: '',
      args: [],
    );
  }

  /// `Please select a niche`
  String get PleaseSelectANiche {
    return Intl.message(
      'Please select a niche',
      name: 'PleaseSelectANiche',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one target audience`
  String get PleaseSelectAtLeastOneTargetAudience {
    return Intl.message(
      'Please select at least one target audience',
      name: 'PleaseSelectAtLeastOneTargetAudience',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one age range`
  String get PleaseSelectAtLeastOneAgeRange {
    return Intl.message(
      'Please select at least one age range',
      name: 'PleaseSelectAtLeastOneAgeRange',
      desc: '',
      args: [],
    );
  }

  /// `The more info we get, the better `
  String get TheMoreInfoWeGetTheBetter {
    return Intl.message(
      'The more info we get, the better ',
      name: 'TheMoreInfoWeGetTheBetter',
      desc: '',
      args: [],
    );
  }

  /// `Your traffic`
  String get YourTraffic {
    return Intl.message(
      'Your traffic',
      name: 'YourTraffic',
      desc: '',
      args: [],
    );
  }

  /// `Your position`
  String get YourPosition {
    return Intl.message(
      'Your position',
      name: 'YourPosition',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get Title {
    return Intl.message(
      'Title',
      name: 'Title',
      desc: '',
      args: [],
    );
  }

  /// `Contact person`
  String get ContactPerson {
    return Intl.message(
      'Contact person',
      name: 'ContactPerson',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get Position {
    return Intl.message(
      'Position',
      name: 'Position',
      desc: '',
      args: [],
    );
  }

  /// `Your audience`
  String get YourAudience {
    return Intl.message(
      'Your audience',
      name: 'YourAudience',
      desc: '',
      args: [],
    );
  }

  /// `Your audience age`
  String get YourAudienceAge {
    return Intl.message(
      'Your audience age',
      name: 'YourAudienceAge',
      desc: '',
      args: [],
    );
  }

  /// `Shuffle`
  String get Shuffle {
    return Intl.message(
      'Shuffle',
      name: 'Shuffle',
      desc: '',
      args: [],
    );
  }

  /// `Shuffle `
  String get ShuffleWithRightWhitespace {
    return Intl.message(
      'Shuffle ',
      name: 'ShuffleWithRightWhitespace',
      desc: '',
      args: [],
    );
  }

  /// `Places`
  String get Places {
    return Intl.message(
      'Places',
      name: 'Places',
      desc: '',
      args: [],
    );
  }

  /// `Create your place and invite people`
  String get CreateYourPlaceAndInvitePeople {
    return Intl.message(
      'Create your place and invite people',
      name: 'CreateYourPlaceAndInvitePeople',
      desc: '',
      args: [],
    );
  }

  /// `Create place`
  String get CreatePlace {
    return Intl.message(
      'Create place',
      name: 'CreatePlace',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get Website {
    return Intl.message(
      'Website',
      name: 'Website',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get Location {
    return Intl.message(
      'Location',
      name: 'Location',
      desc: '',
      args: [],
    );
  }

  /// `Work hours`
  String get WorkHours {
    return Intl.message(
      'Work hours',
      name: 'WorkHours',
      desc: '',
      args: [],
    );
  }

  /// `{title} is required`
  String XIsRequired(Object title) {
    return Intl.message(
      '$title is required',
      name: 'XIsRequired',
      desc: '',
      args: [title],
    );
  }

  /// `Description`
  String get Description {
    return Intl.message(
      'Description',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `Photos`
  String get Photos {
    return Intl.message(
      'Photos',
      name: 'Photos',
      desc: '',
      args: [],
    );
  }

  /// `Logo`
  String get Logo {
    return Intl.message(
      'Logo',
      name: 'Logo',
      desc: '',
      args: [],
    );
  }

  /// `Place`
  String get Place {
    return Intl.message(
      'Place',
      name: 'Place',
      desc: '',
      args: [],
    );
  }

  /// `Open from`
  String get OpenFrom {
    return Intl.message(
      'Open from',
      name: 'OpenFrom',
      desc: '',
      args: [],
    );
  }

  /// `Open to`
  String get OpenTo {
    return Intl.message(
      'Open to',
      name: 'OpenTo',
      desc: '',
      args: [],
    );
  }

  /// `Days of week`
  String get DaysOfWeek {
    return Intl.message(
      'Days of week',
      name: 'DaysOfWeek',
      desc: '',
      args: [],
    );
  }

  /// `Select days `
  String get SelectDays {
    return Intl.message(
      'Select days ',
      name: 'SelectDays',
      desc: '',
      args: [],
    );
  }

  /// `Daily `
  String get Daily {
    return Intl.message(
      'Daily ',
      name: 'Daily',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message(
      'Address',
      name: 'Address',
      desc: '',
      args: [],
    );
  }

  /// `Base properties`
  String get BaseProperties {
    return Intl.message(
      'Base properties',
      name: 'BaseProperties',
      desc: '',
      args: [],
    );
  }

  /// `Unique properties`
  String get UniqueProperties {
    return Intl.message(
      'Unique properties',
      name: 'UniqueProperties',
      desc: '',
      args: [],
    );
  }

  /// `Create Event`
  String get CreateEvent {
    return Intl.message(
      'Create Event',
      name: 'CreateEvent',
      desc: '',
      args: [],
    );
  }

  /// `Event type`
  String get EventType {
    return Intl.message(
      'Event type',
      name: 'EventType',
      desc: '',
      args: [],
    );
  }

  /// `Is recurrent`
  String get IsRecurrent {
    return Intl.message(
      'Is recurrent',
      name: 'IsRecurrent',
      desc: '',
      args: [],
    );
  }

  /// `Opening hours`
  String get OpeningHours {
    return Intl.message(
      'Opening hours',
      name: 'OpeningHours',
      desc: '',
      args: [],
    );
  }

  /// `Tap to set address`
  String get TapToSetAddress {
    return Intl.message(
      'Tap to set address',
      name: 'TapToSetAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter {inputType}`
  String EnterInputType(Object inputType) {
    return Intl.message(
      'Enter $inputType',
      name: 'EnterInputType',
      desc: '',
      args: [inputType],
    );
  }

  /// `Show result`
  String get ShowResult {
    return Intl.message(
      'Show result',
      name: 'ShowResult',
      desc: '',
      args: [],
    );
  }

  /// `Then check this out`
  String get ThenCheckThisOut {
    return Intl.message(
      'Then check this out',
      name: 'ThenCheckThisOut',
      desc: '',
      args: [],
    );
  }

  /// `We have places just for you`
  String get WeHavePlacesJustForYou {
    return Intl.message(
      'We have places just for you',
      name: 'WeHavePlacesJustForYou',
      desc: '',
      args: [],
    );
  }

  /// `Get reward`
  String get GetReward {
    return Intl.message(
      'Get reward',
      name: 'GetReward',
      desc: '',
      args: [],
    );
  }

  /// `Archived`
  String get Archived {
    return Intl.message(
      'Archived',
      name: 'Archived',
      desc: '',
      args: [],
    );
  }

  /// `Event`
  String get Event {
    return Intl.message(
      'Event',
      name: 'Event',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get Time {
    return Intl.message(
      'Time',
      name: 'Time',
      desc: '',
      args: [],
    );
  }

  /// `Dates`
  String get Dates {
    return Intl.message(
      'Dates',
      name: 'Dates',
      desc: '',
      args: [],
    );
  }

  /// `select {type}`
  String SelectType(Object type) {
    return Intl.message(
      'select $type',
      name: 'SelectType',
      desc: '',
      args: [type],
    );
  }

  /// `Day`
  String get Day {
    return Intl.message(
      'Day',
      name: 'Day',
      desc: '',
      args: [],
    );
  }

  /// `Place type`
  String get PlaceType {
    return Intl.message(
      'Place type',
      name: 'PlaceType',
      desc: '',
      args: [],
    );
  }

  /// `Depending on...`
  String get DependingOn {
    return Intl.message(
      'Depending on...',
      name: 'DependingOn',
      desc: '',
      args: [],
    );
  }

  /// `You get exactly what you need`
  String get YouGetExactlyWhatYouNeed {
    return Intl.message(
      'You get exactly what you need',
      name: 'YouGetExactlyWhatYouNeed',
      desc: '',
      args: [],
    );
  }

  /// `How it\nworks`
  String get HowItWorks {
    return Intl.message(
      'How it\nworks',
      name: 'HowItWorks',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get Today {
    return Intl.message(
      'Today',
      name: 'Today',
      desc: '',
      args: [],
    );
  }

  /// `Check in`
  String get CheckIn {
    return Intl.message(
      'Check in',
      name: 'CheckIn',
      desc: '',
      args: [],
    );
  }

  /// `Visit first to open next`
  String get VisitFirstToOpenNext {
    return Intl.message(
      'Visit first to open next',
      name: 'VisitFirstToOpenNext',
      desc: '',
      args: [],
    );
  }

  /// `Photo`
  String get Photo {
    return Intl.message(
      'Photo',
      name: 'Photo',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get Video {
    return Intl.message(
      'Video',
      name: 'Video',
      desc: '',
      args: [],
    );
  }

  /// `Or drag files here`
  String get OrDragFilesHere {
    return Intl.message(
      'Or drag files here',
      name: 'OrDragFilesHere',
      desc: '',
      args: [],
    );
  }

  /// `Logo (upload Files)`
  String get LogoUploadFiles {
    return Intl.message(
      'Logo (upload Files)',
      name: 'LogoUploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `Photo (upload Files)`
  String get PhotoUploadFiles {
    return Intl.message(
      'Photo (upload Files)',
      name: 'PhotoUploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `Video (upload Files)`
  String get VideoUploadFiles {
    return Intl.message(
      'Video (upload Files)',
      name: 'VideoUploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `Published`
  String get Published {
    return Intl.message(
      'Published',
      name: 'Published',
      desc: '',
      args: [],
    );
  }

  /// `{editingType} place`
  String EditingTypePlace(Object editingType) {
    return Intl.message(
      '$editingType place',
      name: 'EditingTypePlace',
      desc: '',
      args: [editingType],
    );
  }

  /// `Update`
  String get Update {
    return Intl.message(
      'Update',
      name: 'Update',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get Create {
    return Intl.message(
      'Create',
      name: 'Create',
      desc: '',
      args: [],
    );
  }

  /// `Book it`
  String get BookIt {
    return Intl.message(
      'Book it',
      name: 'BookIt',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade {forNMoney}`
  String UpgradeForNmoney(Object forNMoney) {
    return Intl.message(
      'Upgrade $forNMoney',
      name: 'UpgradeForNmoney',
      desc: '',
      args: [forNMoney],
    );
  }

  /// ` For {formattedPrice}`
  String ForFormattedPrice(Object formattedPrice) {
    return Intl.message(
      ' For $formattedPrice',
      name: 'ForFormattedPrice',
      desc: '',
      args: [formattedPrice],
    );
  }

  /// `Error occured without message`
  String get ErrorOccuredWithoutMessage {
    return Intl.message(
      'Error occured without message',
      name: 'ErrorOccuredWithoutMessage',
      desc: '',
      args: [],
    );
  }

  /// `Permissions`
  String get Permissions {
    return Intl.message(
      'Permissions',
      name: 'Permissions',
      desc: '',
      args: [],
    );
  }

  /// `Allow geolocation`
  String get AllowGeolocation {
    return Intl.message(
      'Allow geolocation',
      name: 'AllowGeolocation',
      desc: '',
      args: [],
    );
  }

  /// `Our recommendation system is based on many factors. Geolocation is only part of the system, which will allow us to correctly prioritize, both in terms of distance and the nearest landscape features (mountains, reservoirs, plains, deserts)`
  String get OurRecommendationsAboutGeolocation {
    return Intl.message(
      'Our recommendation system is based on many factors. Geolocation is only part of the system, which will allow us to correctly prioritize, both in terms of distance and the nearest landscape features (mountains, reservoirs, plains, deserts)',
      name: 'OurRecommendationsAboutGeolocation',
      desc: '',
      args: [],
    );
  }

  /// `Allow {allowValue}`
  String AllowX(Object allowValue) {
    return Intl.message(
      'Allow $allowValue',
      name: 'AllowX',
      desc: '',
      args: [allowValue],
    );
  }

  /// `We do not spam all kinds of notifications and advertisements. Only those notifications that may be important to you and match your preferences`
  String get WeDoNotSpamAllKindsOfNotifications {
    return Intl.message(
      'We do not spam all kinds of notifications and advertisements. Only those notifications that may be important to you and match your preferences',
      name: 'WeDoNotSpamAllKindsOfNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Using health kit`
  String get UsingHealthKit {
    return Intl.message(
      'Using health kit',
      name: 'UsingHealthKit',
      desc: '',
      args: [],
    );
  }

  /// `Based on your activity, heart rate and other factors, we determine your condition and try to recommend exactly what you need right now, specifically for you`
  String get BasedOnYourActivityWeDetermineYourCondition {
    return Intl.message(
      'Based on your activity, heart rate and other factors, we determine your condition and try to recommend exactly what you need right now, specifically for you',
      name: 'BasedOnYourActivityWeDetermineYourCondition',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get Allow {
    return Intl.message(
      'Allow',
      name: 'Allow',
      desc: '',
      args: [],
    );
  }

  /// `Allow all`
  String get AllowAll {
    return Intl.message(
      'Allow all',
      name: 'AllowAll',
      desc: '',
      args: [],
    );
  }

  /// `Wrong security code`
  String get WrongSecurityCode {
    return Intl.message(
      'Wrong security code',
      name: 'WrongSecurityCode',
      desc: '',
      args: [],
    );
  }

  /// `Error occured`
  String get ErrorOccured {
    return Intl.message(
      'Error occured',
      name: 'ErrorOccured',
      desc: '',
      args: [],
    );
  }

  /// `Company name`
  String get CompanyName {
    return Intl.message(
      'Company name',
      name: 'CompanyName',
      desc: '',
      args: [],
    );
  }

  /// `Company position`
  String get CompanyPosition {
    return Intl.message(
      'Company position',
      name: 'CompanyPosition',
      desc: '',
      args: [],
    );
  }

  /// `Personal credentials`
  String get PersonalCredentials {
    return Intl.message(
      'Personal credentials',
      name: 'PersonalCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get PasswordMustBeAtLeast8Characters {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'PasswordMustBeAtLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter, one lowercase letter, one number and one special character`
  String get PasswordConditions {
    return Intl.message(
      'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character',
      name: 'PasswordConditions',
      desc: '',
      args: [],
    );
  }

  /// `Company credentials`
  String get CompanyCredentials {
    return Intl.message(
      'Company credentials',
      name: 'CompanyCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Allow location services to use this function`
  String get AllowLocationServicesToUseThisFunction {
    return Intl.message(
      'Allow location services to use this function',
      name: 'AllowLocationServicesToUseThisFunction',
      desc: '',
      args: [],
    );
  }

  /// `Feeling`
  String get Feeling {
    return Intl.message(
      'Feeling',
      name: 'Feeling',
      desc: '',
      args: [],
    );
  }

  /// `Sunny`
  String get Sunny {
    return Intl.message(
      'Sunny',
      name: 'Sunny',
      desc: '',
      args: [],
    );
  }

  /// `Burned today`
  String get BurnedToday {
    return Intl.message(
      'Burned today',
      name: 'BurnedToday',
      desc: '',
      args: [],
    );
  }

  /// `Undefined`
  String get Undefined {
    return Intl.message(
      'Undefined',
      name: 'Undefined',
      desc: '',
      args: [],
    );
  }

  /// `Nothing was found :c`
  String get NothingWasFoundWithEmoji {
    return Intl.message(
      'Nothing was found :c',
      name: 'NothingWasFoundWithEmoji',
      desc: '',
      args: [],
    );
  }

  /// `Click Enter to search`
  String get ClickEnterToSearch {
    return Intl.message(
      'Click Enter to search',
      name: 'ClickEnterToSearch',
      desc: '',
      args: [],
    );
  }

  /// `My card`
  String get MyCard {
    return Intl.message(
      'My card',
      name: 'MyCard',
      desc: '',
      args: [],
    );
  }

  /// `A new location has opened today. Come! You'll like it!`
  String get NewLocationHasOpenedToday {
    return Intl.message(
      'A new location has opened today. Come! You\'ll like it!',
      name: 'NewLocationHasOpenedToday',
      desc: '',
      args: [],
    );
  }

  /// `{value} successfully updated`
  String XSuccessfullyUpdated(Object value) {
    return Intl.message(
      '$value successfully updated',
      name: 'XSuccessfullyUpdated',
      desc: '',
      args: [value],
    );
  }

  /// `User`
  String get User {
    return Intl.message(
      'User',
      name: 'User',
      desc: '',
      args: [],
    );
  }

  /// `Value must be at least 3 characters long`
  String get ValueMustBeAtLeast3Characters {
    return Intl.message(
      'Value must be at least 3 characters long',
      name: 'ValueMustBeAtLeast3Characters',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get Privacy {
    return Intl.message(
      'Privacy',
      name: 'Privacy',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get Terms {
    return Intl.message(
      'Terms',
      name: 'Terms',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account?`
  String get AreYouSureYouWantToDeleteYourAccount {
    return Intl.message(
      'Are you sure you want to delete your account?',
      name: 'AreYouSureYouWantToDeleteYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get AreYouSureYouWantToLogOut {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'AreYouSureYouWantToLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get Yes {
    return Intl.message(
      'Yes',
      name: 'Yes',
      desc: '',
      args: [],
    );
  }

  /// `Premium account`
  String get PremiumAccount {
    return Intl.message(
      'Premium account',
      name: 'PremiumAccount',
      desc: '',
      args: [],
    );
  }

  /// `Pro account`
  String get ProAccount {
    return Intl.message(
      'Pro account',
      name: 'ProAccount',
      desc: '',
      args: [],
    );
  }

  /// `Athlete`
  String get Athlete {
    return Intl.message(
      'Athlete',
      name: 'Athlete',
      desc: '',
      args: [],
    );
  }

  /// `Hard to answer`
  String get HardToAnswer {
    return Intl.message(
      'Hard to answer',
      name: 'HardToAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Not often`
  String get NotOften {
    return Intl.message(
      'Not often',
      name: 'NotOften',
      desc: '',
      args: [],
    );
  }

  /// `{value} could not be empty`
  String XCouldNotBeEmpty(Object value) {
    return Intl.message(
      '$value could not be empty',
      name: 'XCouldNotBeEmpty',
      desc: '',
      args: [value],
    );
  }

  /// `Tags`
  String get Tags {
    return Intl.message(
      'Tags',
      name: 'Tags',
      desc: '',
      args: [],
    );
  }

  /// `Name or nickname`
  String get NameOrNickname {
    return Intl.message(
      'Name or nickname',
      name: 'NameOrNickname',
      desc: '',
      args: [],
    );
  }

  /// `Nickname is taken, try another one`
  String get NicknameIsTakenTryAnotherOne {
    return Intl.message(
      'Nickname is taken, try another one',
      name: 'NicknameIsTakenTryAnotherOne',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your company profile?`
  String get AreYouSureYouWantToDeleteYourCompanyProfile {
    return Intl.message(
      'Are you sure you want to delete your company profile?',
      name: 'AreYouSureYouWantToDeleteYourCompanyProfile',
      desc: '',
      args: [],
    );
  }

  /// `White theme`
  String get WhiteTheme {
    return Intl.message(
      'White theme',
      name: 'WhiteTheme',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Accept donations or help others realize their dreams`
  String get AcceptDonations {
    return Intl.message(
      'Accept donations or help others realize their dreams',
      name: 'AcceptDonations',
      desc: '',
      args: [],
    );
  }

  /// `Day and night`
  String get daynight {
    return Intl.message(
      'Day and night',
      name: 'daynight',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get Message {
    return Intl.message(
      'Message',
      name: 'Message',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get Category {
    return Intl.message(
      'Category',
      name: 'Category',
      desc: '',
      args: [],
    );
  }

  /// `Swipe to start`
  String get SwipeToStart {
    return Intl.message(
      'Swipe to start',
      name: 'SwipeToStart',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get key {
    return Intl.message(
      '',
      name: 'key',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get Messages {
    return Intl.message(
      'Messages',
      name: 'Messages',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
