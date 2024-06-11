import 'package:flutter/services.dart';

class PriceWithSpacesFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text.replaceAll(RegExp(r'[^\d.,]'), '');

    int firstDecimalPointIndex = newText.indexOf(RegExp(r'[.,]'));
    if (firstDecimalPointIndex >= 0) {
      String beforeDecimal = newText.substring(0, firstDecimalPointIndex + 1);
      String afterDecimal = newText.substring(firstDecimalPointIndex + 1).replaceAll(RegExp(r'[.,]'), '');
      newText = beforeDecimal + afterDecimal;
    }

    if (newText.endsWith('.') || newText.endsWith(',')) {
      if (newText.length == firstDecimalPointIndex + 1) {
        newText = newText.substring(0, newText.length - 1);
      }
    }

    int decimalPointIndex = newText.indexOf(RegExp(r'[.,]'));
    String integerPart;
    String decimalPart = '';

    if (decimalPointIndex >= 0) {
      integerPart = newText.substring(0, decimalPointIndex);
      decimalPart = newText.substring(decimalPointIndex);
    } else {
      integerPart = newText;
    }

    String formattedIntegerPart = '';
    for (int i = 0; i < integerPart.length; i++) {
      if (i > 0 && (integerPart.length - i) % 3 == 0) {
        formattedIntegerPart += ' ';
      }
      formattedIntegerPart += integerPart[i];
    }

    String formattedText = formattedIntegerPart + decimalPart;

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }

  String formatStringUpdate(String text) {
    return formatEditUpdate(TextEditingValue.empty, TextEditingValue(text: text)).text;
  }
}

extension StringExtension on String {
  String replaceMultipleDotsAndCommas() {
    return replaceAll(RegExp(r'[.,]'), '.');
  }
}
