// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(allowValue) => "Allow ${allowValue}";

  static String m1(allowedCharacters) =>
      "Allowed caracters are ${allowedCharacters}";

  static String m2(days) =>
      "${Intl.plural(days, zero: '${days} days', one: '${days} day', two: '${days} days', few: '${days} days', many: '${days} days', other: '${days} days')}";

  static String m3(editingType) => "${editingType} place";

  static String m4(inputType) => "Enter ${inputType}";

  static String m5(formattedPrice) => " For ${formattedPrice}";

  static String m6(helpfulCount) => "Helpful ${helpfulCount}";

  static String m7(days) =>
      "Hint system enabled for ${Intl.plural(days, zero: '${days} days', one: '${days} day', two: '${days} days', few: '${days} days', many: '${days} days', other: '${days} days')}";

  static String m8(invitedPeopleCount) =>
      "Invites ${invitedPeopleCount} people to";

  static String m9(placeIndex) => "${placeIndex} place";

  static String m10(amountOfPeople) => "Next ${amountOfPeople} people";

  static String m11(religionCount) =>
      "Please select at least ${religionCount} religion";

  static String m12(type) => "select ${type}";

  static String m13(separator) => "Tell us more${separator}about yourself";

  static String m14(amountOfTopDonators, multiplier) =>
      "Top ${amountOfTopDonators} donators receive x${multiplier} points";

  static String m15(type) => "To use this function plz upgrade to ${type}";

  static String m16(forNMoney) => "Upgrade ${forNMoney}";

  static String m17(count) =>
      "${Intl.plural(count, zero: '${count} users', one: '${count} user', two: '${count} users', few: '${count} users', many: '${count} users', other: '${count} users')}";

  static String m18(value) => "${value} could not be empty";

  static String m19(title) => "${title} is required";

  static String m20(value) => "${value} successfully updated";

  static String m21(amountOfInvitedPersons) =>
      "You sent an invitation to ${amountOfInvitedPersons} people";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AcceptDonations": MessageLookupByLibrary.simpleMessage(
            "Accept donations or help others realize their dreams"),
        "ActivityType": MessageLookupByLibrary.simpleMessage("Activity type"),
        "AddYourselfToList":
            MessageLookupByLibrary.simpleMessage("Add yourself to list"),
        "Address": MessageLookupByLibrary.simpleMessage("Address"),
        "AllAppNotification":
            MessageLookupByLibrary.simpleMessage("All app notifications"),
        "Allow": MessageLookupByLibrary.simpleMessage("Allow"),
        "AllowAll": MessageLookupByLibrary.simpleMessage("Allow all"),
        "AllowGeolocation":
            MessageLookupByLibrary.simpleMessage("Allow geolocation"),
        "AllowLocationServicesToUseThisFunction":
            MessageLookupByLibrary.simpleMessage(
                "Allow location services to use this function"),
        "AllowX": m0,
        "AllowedCaracters": m1,
        "AndWithWhitespaces": MessageLookupByLibrary.simpleMessage(" And "),
        "Archived": MessageLookupByLibrary.simpleMessage("Archived"),
        "AreYouSureYouWantToDeleteYourAccount":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete your account?"),
        "AreYouSureYouWantToDeleteYourCompanyProfile":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete your company profile?"),
        "AreYouSureYouWantToLogOut": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "AskForDonations":
            MessageLookupByLibrary.simpleMessage("Ask for donations"),
        "AskOrSupport": MessageLookupByLibrary.simpleMessage("Ask or support"),
        "AskPeople": MessageLookupByLibrary.simpleMessage("Ask people"),
        "Athlete": MessageLookupByLibrary.simpleMessage("Athlete"),
        "Balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "BaseProperties":
            MessageLookupByLibrary.simpleMessage("Base properties"),
        "BasedOnYourActivityWeDetermineYourCondition":
            MessageLookupByLibrary.simpleMessage(
                "Based on your activity, heart rate and other factors, we determine your condition and try to recommend exactly what you need right now, specifically for you"),
        "BeInSearch": MessageLookupByLibrary.simpleMessage("Be in search"),
        "BookIt": MessageLookupByLibrary.simpleMessage("Book it"),
        "BurnedToday": MessageLookupByLibrary.simpleMessage("Burned today"),
        "ByContinuingYouAcceptThe": MessageLookupByLibrary.simpleMessage(
            "By continuing you accept the "),
        "Cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "Category": MessageLookupByLibrary.simpleMessage("Category"),
        "ChangePhoto": MessageLookupByLibrary.simpleMessage("Change photo"),
        "CheckIn": MessageLookupByLibrary.simpleMessage("Check in"),
        "ChooseOption": MessageLookupByLibrary.simpleMessage("Choose option"),
        "ClickEnterToSearch":
            MessageLookupByLibrary.simpleMessage("Click Enter to search"),
        "CompanyAnswered":
            MessageLookupByLibrary.simpleMessage("Сompany answered"),
        "CompanyCredentials":
            MessageLookupByLibrary.simpleMessage("Company credentials"),
        "CompanyName": MessageLookupByLibrary.simpleMessage("Company name"),
        "CompanyPosition":
            MessageLookupByLibrary.simpleMessage("Company position"),
        "Confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "ContactPerson": MessageLookupByLibrary.simpleMessage("Contact person"),
        "Continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "Create": MessageLookupByLibrary.simpleMessage("Create"),
        "CreateEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "CreatePlace": MessageLookupByLibrary.simpleMessage("Create place"),
        "CreateYourPlaceAndInvitePeople": MessageLookupByLibrary.simpleMessage(
            "Create your place and invite people"),
        "Daily": MessageLookupByLibrary.simpleMessage("Daily "),
        "DateOfBirth": MessageLookupByLibrary.simpleMessage("Date of birth"),
        "Dates": MessageLookupByLibrary.simpleMessage("Dates"),
        "Day": MessageLookupByLibrary.simpleMessage("Day"),
        "Days": m2,
        "DaysOfWeek": MessageLookupByLibrary.simpleMessage("Days of week"),
        "DeleteFromList":
            MessageLookupByLibrary.simpleMessage("Delete from list"),
        "DependingOn": MessageLookupByLibrary.simpleMessage("Depending on..."),
        "DescribeYourClaim":
            MessageLookupByLibrary.simpleMessage("Describe your claim"),
        "DescribeYourIssue":
            MessageLookupByLibrary.simpleMessage("Describe your issue"),
        "DescribeYourWishes":
            MessageLookupByLibrary.simpleMessage("Describe your wishes"),
        "DescribeYourself":
            MessageLookupByLibrary.simpleMessage("Describe yourself"),
        "Description": MessageLookupByLibrary.simpleMessage("Description"),
        "Details": MessageLookupByLibrary.simpleMessage("Details"),
        "Directions": MessageLookupByLibrary.simpleMessage(""),
        "DonationHint": MessageLookupByLibrary.simpleMessage(
            "You can only spend on your dream, otherwise the money will go back to the donators. One request per month."),
        "DontBeAlone": MessageLookupByLibrary.simpleMessage("Don\'t be alone"),
        "DontMissIt": MessageLookupByLibrary.simpleMessage("Don\'t miss it"),
        "Edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "EditProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "EditingTypePlace": m3,
        "Email": MessageLookupByLibrary.simpleMessage("Email"),
        "EnableHintSystem":
            MessageLookupByLibrary.simpleMessage("Enable hint system"),
        "EnterInputType": m4,
        "EnterPlaceAddressPrompt": MessageLookupByLibrary.simpleMessage(
            "Please enter place’s address"),
        "EnterYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Enter your e-mail address"),
        "ErrorOccured": MessageLookupByLibrary.simpleMessage("Error occured"),
        "ErrorOccuredWithoutMessage": MessageLookupByLibrary.simpleMessage(
            "Error occured without message"),
        "Event": MessageLookupByLibrary.simpleMessage("Event"),
        "EventType": MessageLookupByLibrary.simpleMessage("Event type"),
        "Events": MessageLookupByLibrary.simpleMessage("Events"),
        "EventsReminders":
            MessageLookupByLibrary.simpleMessage("Events reminders"),
        "Faq": MessageLookupByLibrary.simpleMessage("Faq"),
        "FaqUnderDev": MessageLookupByLibrary.simpleMessage(
            "Gathering requests for FAQ. \nUnder development"),
        "Favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "FeaturesEnableGeolocation":
            MessageLookupByLibrary.simpleMessage("Features enable geolocation"),
        "Feeling": MessageLookupByLibrary.simpleMessage("Feeling"),
        "Filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "FindSomeoneToHangOutWith": MessageLookupByLibrary.simpleMessage(
            "Find someone to hang out with"),
        "FindSomeoneToNetworkWith": MessageLookupByLibrary.simpleMessage(
            "Find someone to network with"),
        "Follow": MessageLookupByLibrary.simpleMessage(""),
        "Followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "Followings": MessageLookupByLibrary.simpleMessage("Followings"),
        "For": MessageLookupByLibrary.simpleMessage("For"),
        "ForFormattedPrice": m5,
        "ForPeriod": MessageLookupByLibrary.simpleMessage("For"),
        "ForgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password"),
        "FreePlaces": MessageLookupByLibrary.simpleMessage("\nfree places"),
        "FulfillTheDream":
            MessageLookupByLibrary.simpleMessage("Fulfill the dream"),
        "Gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "GetCode": MessageLookupByLibrary.simpleMessage("Get code"),
        "GetReward": MessageLookupByLibrary.simpleMessage("Get reward"),
        "GetStarted": MessageLookupByLibrary.simpleMessage("Get started"),
        "Go": MessageLookupByLibrary.simpleMessage("Go!"),
        "GoToSettings": MessageLookupByLibrary.simpleMessage("Go to settings"),
        "Guess": MessageLookupByLibrary.simpleMessage("Guess"),
        "HallOfFame": MessageLookupByLibrary.simpleMessage("Hall of Fame"),
        "HardToAnswer": MessageLookupByLibrary.simpleMessage("Hard to answer"),
        "HealthKit": MessageLookupByLibrary.simpleMessage("Health Kit"),
        "Helpful": MessageLookupByLibrary.simpleMessage("Helpful"),
        "HelpfulNCount": m6,
        "HintSystemDisabled":
            MessageLookupByLibrary.simpleMessage("Hint system disabled"),
        "HintSystemEnabled": m7,
        "HowAreYouFeelingTonight":
            MessageLookupByLibrary.simpleMessage("How’re you feeling tonight?"),
        "HowItWorks": MessageLookupByLibrary.simpleMessage("How it\nworks"),
        "HowMuchDoYouWantToDonate": MessageLookupByLibrary.simpleMessage(
            "How much \$ do you want to donate?"),
        "IncorrectLoginOrPassword":
            MessageLookupByLibrary.simpleMessage("Incorrect login or password"),
        "InvitationsCanBeViewedInPrivateMessages":
            MessageLookupByLibrary.simpleMessage(
                "Invitations can be viewed in private messages"),
        "Invite": MessageLookupByLibrary.simpleMessage("Invite"),
        "InviteList": MessageLookupByLibrary.simpleMessage("Invite list"),
        "InviteMore": MessageLookupByLibrary.simpleMessage("Invite more"),
        "InvitePeople": MessageLookupByLibrary.simpleMessage("Invite people"),
        "InviteToFavoritePlaces":
            MessageLookupByLibrary.simpleMessage("Invite to favourite places"),
        "InvitesNPeopleTo": m8,
        "InvitesYouTo": MessageLookupByLibrary.simpleMessage("Invites you to"),
        "IsRecurrent": MessageLookupByLibrary.simpleMessage("Is recurrent"),
        "Loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "Location": MessageLookupByLibrary.simpleMessage("Location"),
        "Logo": MessageLookupByLibrary.simpleMessage("Logo"),
        "LogoUploadFiles":
            MessageLookupByLibrary.simpleMessage("Logo (upload Files)"),
        "LovelyTouchAmazingInteraction": MessageLookupByLibrary.simpleMessage(
            "Lovely-touch amazing\ninteraction"),
        "Members": MessageLookupByLibrary.simpleMessage(""),
        "Message": MessageLookupByLibrary.simpleMessage("Message"),
        "Messages": MessageLookupByLibrary.simpleMessage("Messages"),
        "Month": MessageLookupByLibrary.simpleMessage("Month"),
        "MyCard": MessageLookupByLibrary.simpleMessage("My card"),
        "MyEvents": MessageLookupByLibrary.simpleMessage("My events"),
        "NPlace": m9,
        "Name": MessageLookupByLibrary.simpleMessage("Name"),
        "NameOrNickname":
            MessageLookupByLibrary.simpleMessage("Name or nickname"),
        "NewDonates": MessageLookupByLibrary.simpleMessage("New donates"),
        "NewFeatures": MessageLookupByLibrary.simpleMessage("New features"),
        "NewFollowers": MessageLookupByLibrary.simpleMessage("New followers"),
        "NewLocationHasOpenedToday": MessageLookupByLibrary.simpleMessage(
            "A new location has opened today. Come! You\'ll like it!"),
        "NewPlace": MessageLookupByLibrary.simpleMessage("New place"),
        "Next": MessageLookupByLibrary.simpleMessage("Next"),
        "NextNPeople": m10,
        "NextWithChevrons": MessageLookupByLibrary.simpleMessage("Next >>>"),
        "Nickname": MessageLookupByLibrary.simpleMessage("Nickname"),
        "NicknameIsTakenTryAnotherOne": MessageLookupByLibrary.simpleMessage(
            "Nickname is taken, try another one"),
        "NoConnection": MessageLookupByLibrary.simpleMessage(
            "Sorry, no internet connection"),
        "NoDateSelected":
            MessageLookupByLibrary.simpleMessage("No date selected"),
        "NoFavoritesFound":
            MessageLookupByLibrary.simpleMessage("No favorites found"),
        "NoHealthKitAvailableOnYourDevice": MessageLookupByLibrary.simpleMessage(
            "No health kit available on your device, so the result will be random"),
        "NoPhotoHereYet":
            MessageLookupByLibrary.simpleMessage("No photo here yet!"),
        "NoPreferencesChosen":
            MessageLookupByLibrary.simpleMessage("No preferences chosen"),
        "NoThx": MessageLookupByLibrary.simpleMessage("No, thx"),
        "NotNow": MessageLookupByLibrary.simpleMessage("Not now"),
        "NotOften": MessageLookupByLibrary.simpleMessage("Not often"),
        "NothingFound": MessageLookupByLibrary.simpleMessage("Nothing found"),
        "NothingWasFoundWithEmoji":
            MessageLookupByLibrary.simpleMessage("Nothing was found :c"),
        "Notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "NowLetsGetToKnowEachOther": MessageLookupByLibrary.simpleMessage(
            "Now let\'s get to know each other"),
        "Off": MessageLookupByLibrary.simpleMessage(""),
        "Ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "OkayCool": MessageLookupByLibrary.simpleMessage("Okay, cool!"),
        "Ooops": MessageLookupByLibrary.simpleMessage("Ooops!"),
        "OopsIWillTryAgain":
            MessageLookupByLibrary.simpleMessage("Oops, I\'ll try again"),
        "OpenFrom": MessageLookupByLibrary.simpleMessage("Open from"),
        "OpenTo": MessageLookupByLibrary.simpleMessage("Open to"),
        "OpeningHours": MessageLookupByLibrary.simpleMessage("Opening hours"),
        "OrDragFilesHere":
            MessageLookupByLibrary.simpleMessage("Or drag files here"),
        "OurRecommendationsAboutGeolocation": MessageLookupByLibrary.simpleMessage(
            "Our recommendation system is based on many factors. Geolocation is only part of the system, which will allow us to correctly prioritize, both in terms of distance and the nearest landscape features (mountains, reservoirs, plains, deserts)"),
        "Password": MessageLookupByLibrary.simpleMessage("Password"),
        "PasswordConditions": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter, one lowercase letter, one number and one special character"),
        "PasswordMustBeAtLeast8Characters":
            MessageLookupByLibrary.simpleMessage(
                "Password must be at least 8 characters"),
        "Permissions": MessageLookupByLibrary.simpleMessage("Permissions"),
        "PersonalCredentials":
            MessageLookupByLibrary.simpleMessage("Personal credentials"),
        "Phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "Photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "PhotoUploadFiles":
            MessageLookupByLibrary.simpleMessage("Photo (upload Files)"),
        "Photos": MessageLookupByLibrary.simpleMessage("Photos"),
        "Place": MessageLookupByLibrary.simpleMessage("Place"),
        "PlaceType": MessageLookupByLibrary.simpleMessage("Place type"),
        "Places": MessageLookupByLibrary.simpleMessage("Places"),
        "PleaseFillOutDate":
            MessageLookupByLibrary.simpleMessage("Please fill out date"),
        "PleaseFillOutYourWishes":
            MessageLookupByLibrary.simpleMessage("Please fill out your wishes"),
        "PleaseSelectANiche":
            MessageLookupByLibrary.simpleMessage("Please select a niche"),
        "PleaseSelectAtLeastNReligion": m11,
        "PleaseSelectAtLeastOneAgeRange": MessageLookupByLibrary.simpleMessage(
            "Please select at least one age range"),
        "PleaseSelectAtLeastOneTargetAudience":
            MessageLookupByLibrary.simpleMessage(
                "Please select at least one target audience"),
        "PleaseSelectGender":
            MessageLookupByLibrary.simpleMessage("Please select a gender"),
        "PleaseSelectOneType":
            MessageLookupByLibrary.simpleMessage("Please select one type"),
        "PointBalance": MessageLookupByLibrary.simpleMessage("Point Balance"),
        "Points": MessageLookupByLibrary.simpleMessage("Points"),
        "Position": MessageLookupByLibrary.simpleMessage("Position"),
        "Preferences": MessageLookupByLibrary.simpleMessage("Preferences"),
        "Premium": MessageLookupByLibrary.simpleMessage("Premium"),
        "PremiumAccount":
            MessageLookupByLibrary.simpleMessage("Premium account"),
        "Price": MessageLookupByLibrary.simpleMessage("Price"),
        "Privacy": MessageLookupByLibrary.simpleMessage("Privacy"),
        "Pro": MessageLookupByLibrary.simpleMessage("Pro"),
        "ProAccount": MessageLookupByLibrary.simpleMessage("Pro account"),
        "Published": MessageLookupByLibrary.simpleMessage("Published"),
        "Recommended": MessageLookupByLibrary.simpleMessage("Recommended"),
        "ResetFilters": MessageLookupByLibrary.simpleMessage("Reset filters"),
        "ResetPassword": MessageLookupByLibrary.simpleMessage("Reset password"),
        "Save": MessageLookupByLibrary.simpleMessage("Save"),
        "Search": MessageLookupByLibrary.simpleMessage(""),
        "SeeAll": MessageLookupByLibrary.simpleMessage("See all"),
        "SeeMore": MessageLookupByLibrary.simpleMessage("See more"),
        "SelectDate": MessageLookupByLibrary.simpleMessage("Select date"),
        "SelectDays": MessageLookupByLibrary.simpleMessage("Select days "),
        "SelectLanguage":
            MessageLookupByLibrary.simpleMessage("Please select language"),
        "SelectOption": MessageLookupByLibrary.simpleMessage("Select option"),
        "SelectType": m12,
        "SelectYourReligions":
            MessageLookupByLibrary.simpleMessage("Select your religions"),
        "SelectionOfTheBest":
            MessageLookupByLibrary.simpleMessage("Selection of the best"),
        "Send": MessageLookupByLibrary.simpleMessage("Send"),
        "SendIt": MessageLookupByLibrary.simpleMessage("Send it"),
        "Services": MessageLookupByLibrary.simpleMessage("Services"),
        "ShowResult": MessageLookupByLibrary.simpleMessage("Show result"),
        "Shuffle": MessageLookupByLibrary.simpleMessage("Shuffle"),
        "ShuffleWithRightWhitespace":
            MessageLookupByLibrary.simpleMessage("Shuffle "),
        "Skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "Small": MessageLookupByLibrary.simpleMessage("Small"),
        "SmartLeisureSelection": MessageLookupByLibrary.simpleMessage(
            "Smart leisure selection for everyone, everywhere."),
        "Spent": MessageLookupByLibrary.simpleMessage("Spent"),
        "StartToExplore":
            MessageLookupByLibrary.simpleMessage("Start to explore"),
        "Sunny": MessageLookupByLibrary.simpleMessage("Sunny"),
        "Support": MessageLookupByLibrary.simpleMessage("Support"),
        "SupportPeopleAroundYou":
            MessageLookupByLibrary.simpleMessage("Support people around you"),
        "SwipeToStart": MessageLookupByLibrary.simpleMessage("Swipe to start"),
        "SwitchAnyTime": MessageLookupByLibrary.simpleMessage(
            "You can switch it at any time in your profile settings"),
        "Tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "TapIt": MessageLookupByLibrary.simpleMessage("Tap it"),
        "TapOnceToChoose":
            MessageLookupByLibrary.simpleMessage("Tap once to choose "),
        "TapToSeeMore": MessageLookupByLibrary.simpleMessage("Tap to see more"),
        "TapToSetAddress":
            MessageLookupByLibrary.simpleMessage("Tap to set address"),
        "TapTwiceToMarkYourFavorites": MessageLookupByLibrary.simpleMessage(
            ". Tap twice to mark your favorites."),
        "TellUsMoreAboutYourself": m13,
        "Terms": MessageLookupByLibrary.simpleMessage("Terms"),
        "ThatsAllForNow":
            MessageLookupByLibrary.simpleMessage("That\'s all for now!"),
        "TheMoreInfoWeAboutYouGetTheBetter":
            MessageLookupByLibrary.simpleMessage(
                "The more info we get about you, the better"),
        "TheMoreInfoWeGetTheBetter": MessageLookupByLibrary.simpleMessage(
            "The more info we get, the better "),
        "ThenCheckThisOut":
            MessageLookupByLibrary.simpleMessage("Then check this out"),
        "ThisIs": MessageLookupByLibrary.simpleMessage("This is "),
        "ThroughANonAggregatorSystem": MessageLookupByLibrary.simpleMessage(
            "Through a non-\naggregator system \nespecially for you"),
        "Time": MessageLookupByLibrary.simpleMessage("Time"),
        "Title": MessageLookupByLibrary.simpleMessage("Title"),
        "ToAccessAll": MessageLookupByLibrary.simpleMessage("To access all"),
        "ToAllowAccessGoToSettings": MessageLookupByLibrary.simpleMessage(
            "To allow access to send push notifications, go to your phone settings"),
        "Today": MessageLookupByLibrary.simpleMessage("Today"),
        "TopNDonatorsReceiveXPoints": m14,
        "TopPlacesRatedBy":
            MessageLookupByLibrary.simpleMessage("Top places rated\nby"),
        "TryYourself": MessageLookupByLibrary.simpleMessage("Try\nyourself"),
        "TypeHere": MessageLookupByLibrary.simpleMessage("Type here"),
        "Undefined": MessageLookupByLibrary.simpleMessage("Undefined"),
        "UniqueProperties":
            MessageLookupByLibrary.simpleMessage("Unique properties"),
        "UpcomingEvent": MessageLookupByLibrary.simpleMessage("Upcoming Event"),
        "Update": MessageLookupByLibrary.simpleMessage("Update"),
        "UpgradeAccount": m15,
        "UpgradeAccountConfirmation":
            MessageLookupByLibrary.simpleMessage("Upgrade"),
        "UpgradeForNmoney": m16,
        "User": MessageLookupByLibrary.simpleMessage("User"),
        "Users": m17,
        "UsingHealthKit":
            MessageLookupByLibrary.simpleMessage("Using health kit"),
        "ValueMustBeAtLeast3Characters": MessageLookupByLibrary.simpleMessage(
            "Value must be at least 3 characters long"),
        "Video": MessageLookupByLibrary.simpleMessage("Video"),
        "VideoUploadFiles":
            MessageLookupByLibrary.simpleMessage("Video (upload Files)"),
        "ViewAll": MessageLookupByLibrary.simpleMessage("View all"),
        "VisitFirstToOpenNext":
            MessageLookupByLibrary.simpleMessage("Visit first to open next"),
        "WeDoNotSpamAllKindsOfNotifications": MessageLookupByLibrary.simpleMessage(
            "We do not spam all kinds of notifications and advertisements. Only those notifications that may be important to you and match your preferences"),
        "WeHavePlacesJustForYou":
            MessageLookupByLibrary.simpleMessage("We have places just for you"),
        "WeWillLetKnowResults": MessageLookupByLibrary.simpleMessage(
            "We will let you know the results"),
        "Weather": MessageLookupByLibrary.simpleMessage(""),
        "Website": MessageLookupByLibrary.simpleMessage("Website"),
        "Welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "WhatIs": MessageLookupByLibrary.simpleMessage("What is \n"),
        "WhatYouLike": MessageLookupByLibrary.simpleMessage("What you like"),
        "WhiteTheme": MessageLookupByLibrary.simpleMessage("White theme"),
        "WillBe": MessageLookupByLibrary.simpleMessage(" Will be."),
        "WillBeImplementedSoon":
            MessageLookupByLibrary.simpleMessage("Will be implemented soon"),
        "WithYourPreferences":
            MessageLookupByLibrary.simpleMessage("With your\npreferences"),
        "WorkHours": MessageLookupByLibrary.simpleMessage("Work hours"),
        "WrongSecurityCode":
            MessageLookupByLibrary.simpleMessage("Wrong security code"),
        "XCouldNotBeEmpty": m18,
        "XIsRequired": m19,
        "XSuccessfullyUpdated": m20,
        "Year": MessageLookupByLibrary.simpleMessage("Year"),
        "Yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "YouBetterCheckThisOut":
            MessageLookupByLibrary.simpleMessage("You better check this out"),
        "YouGetExactlyWhatYouNeed": MessageLookupByLibrary.simpleMessage(
            "You get exactly what you need"),
        "YouSentInvitationToNPeople": m21,
        "YoullFindIt": MessageLookupByLibrary.simpleMessage("You’ll find it"),
        "YourAge": MessageLookupByLibrary.simpleMessage("Your age"),
        "YourAudience": MessageLookupByLibrary.simpleMessage("Your audience"),
        "YourAudienceAge":
            MessageLookupByLibrary.simpleMessage("Your audience age"),
        "YourClaimHasBeenSent":
            MessageLookupByLibrary.simpleMessage("Your claim has been sent"),
        "YourEmail": MessageLookupByLibrary.simpleMessage("Your email"),
        "YourLeisureSelection":
            MessageLookupByLibrary.simpleMessage("Your leisure selection"),
        "YourName": MessageLookupByLibrary.simpleMessage("Your name"),
        "YourNiche": MessageLookupByLibrary.simpleMessage("Your niche"),
        "YourPosition": MessageLookupByLibrary.simpleMessage("Your position"),
        "YourTraffic": MessageLookupByLibrary.simpleMessage("Your traffic"),
        "daynight": MessageLookupByLibrary.simpleMessage("Day and night"),
        "key": MessageLookupByLibrary.simpleMessage("ar")
      };
}
