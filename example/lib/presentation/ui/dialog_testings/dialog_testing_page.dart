import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class DialogTestingPage extends StatelessWidget {
  const DialogTestingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              OrdinaryButton(
                text: 'Dialog bottom sheet fullscreen',
                onPressed: () => showUiKitGeneralFullScreenDialog(
                    context,
                    GeneralDialogData(
                        topPadding: 300,
                        useRootNavigator: false,
                        child: Column(
                          children: List.generate(5, (index) => const Placeholder().paddingSymmetric(vertical: 8)),
                        ),
                        bottomBar: Center(
                          child: Container(
                            width: 100,
                            height: 56,
                            color: Colors.red,
                          ),
                        ))),
              ),
              SpacingFoundation.verticalSpace16,
              OrdinaryButton(
                text: 'Dialog calendar picker',
                onPressed: () => showUiKitCalendarDialog(
                  context,
                ),
              ),
              SpacingFoundation.verticalSpace16,
              OrdinaryButton(
                text: 'Dialog time picker',
                onPressed: () => showUiKitTimeDialog(
                  context,
                ),
              ),
              SpacingFoundation.verticalSpace16,
              //почему то работает только так отображение поповера, надо подумать
              Builder(
                builder: (c) => OrdinaryButton(
                  text: 'Dialog comment',
                  onPressed: () => showUiKitPopover(c,
                      title: const Text('Premium account'),
                      buttonText: 'see more',
                      description: const Text('Only premium account users can post reactions')),
                ),
              ),
              SpacingFoundation.verticalSpace16,
              OrdinaryButton(
                text: 'Dialog alert',
                onPressed: () => showUiKitAlertDialog(
                  context,
                  AlertDialogData(
                      defaultButtonText: 'text',
                      title: const Text('You sent an invitation to 2 people.'),
                      content: const Text('Invitations can be viewed in private messages')),
                ),
              ),
              SpacingFoundation.verticalSpace16,
              OrdinaryButton(
                text: 'Fullscreen Dialog',
                onPressed: () {
                  showUiKitFullScreenAlertDialog(
                    context,
                    child: (_, textStyle) => UiKitHintDialog(
                      title: 'Fullscreen Dialog',
                      textStyle: context.uiKitTheme?.boldTextTheme.title2,
                      subtitle: 'you get exactly what you need',
                      dismissText: 'OKAY, COOL!',
                      onDismiss: () => Navigator.pop(_),
                      hintTiles: [
                        UiKitIconHintCard(
                          icon: ImageWidget(
                            svgAsset: GraphicsFoundation.instance.svg.map,
                          ),
                          hint: 'your location',
                        ),
                        UiKitIconHintCard(
                          icon: ImageWidget(
                            svgAsset: GraphicsFoundation.instance.svg.dart,
                          ),
                          hint: 'your interests',
                        ),
                        UiKitIconHintCard(
                          icon: ImageWidget(
                            svgAsset: GraphicsFoundation.instance.svg.sunClouds,
                          ),
                          hint: 'weather around',
                        ),
                        UiKitIconHintCard(
                          icon: ImageWidget(
                            svgAsset: GraphicsFoundation.instance.svg.smileMood,
                          ),
                          hint: 'and other 14 scales',
                        ),
                      ],
                    ),
                  );
                },
              ),
              SpacingFoundation.verticalSpace16,
              context.button(
                data: BaseUiKitButtonData(
                  text: 'Show modal bottom sheet',
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: List.generate(5, (index) => const Placeholder().paddingSymmetric(vertical: 8)),
                      ),
                    ),
                  ),
                ),
              ),
              SpacingFoundation.verticalSpace16,
              OrdinaryButton(
                text: 'Notification dialog',
                onPressed: () => showUiKitAlertDialog(
                  context,
                  AlertDialogData(
                    additionalButton: const SizedBox.shrink(),
                    content: context.dialogButton(
                      data: BaseUiKitButtonData(onPressed: () {}, text: 'go to settings'),
                      dialogButtonType: DialogButtonType.buttonBlack,
                    ),
                    defaultButtonText: 'no, thanks',
                    defaultButtonSmall: false,
                    defaultButtonOutlined: true,
                    title: Text(
                      'To allow access to send push notifications, go to your phone settings',
                      style: context.uiKitTheme?.boldTextTheme.title2.copyWith(
                        color: context.uiKitTheme?.colorScheme.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

                      // context.button(
                      //   data: BaseUiKitButtonData(
                      //     onPressed: () {},
                      //     text: 'GO TO SETTINGS',
                      //     fit: ButtonFit.fitWidth,
                      //   ),
                      // ),