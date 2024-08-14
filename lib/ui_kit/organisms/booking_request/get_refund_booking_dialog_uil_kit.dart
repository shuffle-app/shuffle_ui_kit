import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

getRefundBookingDialogUiKit({
  required BuildContext context,
  bool isFullRefun = true,
  final String? userName,
  final int? ticketRefun,
  final int? allTicket,
  final int? upsaleRefun,
  final int? allUpsale,
}) {
  final theme = context.uiKitTheme;

  return showUiKitAlertDialog(
    context,
    AlertDialogData(
      defaultButtonText: '',
      insetPadding: EdgeInsets.all(EdgeInsetsFoundation.all24),
      title: Text(
        '$userName ${S.of(context).Requests} ${isFullRefun ? S.of(context).Full : S.of(context).Partial} ${S.of(context).Refund}',
        style: theme?.boldTextTheme.title2.copyWith(
          color: theme.colorScheme.inverseHeadingTypography,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        if (!isFullRefun) ...[
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if ((ticketRefun != null && allTicket != null) && ticketRefun > 0 && allTicket >= ticketRefun) ...[
                  Text(
                    '${S.of(context).TicketFrom(ticketRefun)} $allTicket',
                    style: theme?.boldTextTheme.body.copyWith(
                      color: theme.colorScheme.inverseBodyTypography,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                if ((upsaleRefun != null && allUpsale != null) && upsaleRefun > 0 && allUpsale >= upsaleRefun) ...[
                  SpacingFoundation.verticalSpace2,
                  Text(
                    '${S.of(context).UpsalesProductsFrom(upsaleRefun)} $allUpsale',
                    style: theme?.boldTextTheme.body.copyWith(
                      color: theme.colorScheme.inverseBodyTypography,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                SpacingFoundation.verticalSpace16,
              ],
            ),
          ),
        ],
        context.outlinedButton(
          borderColor: theme?.colorScheme.primary,
          data: BaseUiKitButtonData(
            backgroundColor: theme?.colorScheme.primary,
            fit: ButtonFit.fitWidth,
            textColor: theme?.colorScheme.inversePrimary,
            text: S.of(context).GoAhead.toUpperCase(),
            onPressed: () {},
          ),
        ),
        SpacingFoundation.verticalSpace16,
        context.outlinedButton(
          borderColor: theme?.colorScheme.primary,
          data: BaseUiKitButtonData(
            fit: ButtonFit.fitWidth,
            textColor: theme?.colorScheme.primary,
            text: S.of(context).Contact.toUpperCase(),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}
