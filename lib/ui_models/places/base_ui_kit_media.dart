import 'package:shuffle_uikit/shuffle_uikit.dart';

abstract class BaseUiKitMedia {
  final String link;
  final String? videoLink;
  final UiKitMediaType type;

  BaseUiKitMedia({
    required this.link,
    required this.type,
    this.videoLink,
  });
}

class UiKitMediaPhoto extends BaseUiKitMedia {
  UiKitMediaPhoto({
    required String link,
  }) : super(
          link: link,
          type: UiKitMediaType.image,
        );
}

class UiKitMediaVideo extends BaseUiKitMedia {
  UiKitMediaVideo({
    required String link,
    String? videoLink,
  }) : super(
          link: link,
          videoLink: videoLink ?? link,
          type: UiKitMediaType.video,
        );
}

class UiKitTag {
  final String title;
  final String iconPath;
  final bool unique;

  UiKitTagWidget get widget => UiKitTagWidget(
        title: title,
        icon: iconPath,
        uniqueTag: unique,
        textColor: ColorsFoundation.darkNeutral500,
      );

  UiKitTag({
    required this.title,
    required this.iconPath,
    this.unique = false,
  });
}

enum UiKitMediaType { image, video }
