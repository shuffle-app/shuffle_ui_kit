import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitSuggestionField extends StatelessWidget {
  const UiKitSuggestionField({
    super.key,
    required this.options,
    this.hintText,
    this.borderRadius,
    this.onItemSelected,
    this.onFieldSubmitted,
  });

  final List<String> options;
  final String? hintText;
  final BorderRadius? borderRadius;
  final void Function(String)? onItemSelected;
  final VoidCallback? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      fieldViewBuilder: (context, controller, focusNode, onSubmitted) => UiKitInputFieldNoIcon(
        controller: controller,
        node: focusNode,
        hintText: hintText,
        borderRadius: borderRadius ?? BorderRadiusFoundation.max,
        onSubmitted: (_) {
          onSubmitted.call();
          onFieldSubmitted?.call();
        },
      ),
      optionsViewBuilder: (_, onSelected, options) => Align(
        alignment: Alignment.topCenter,
        child: Material(
          borderRadius: borderRadius ?? BorderRadiusFoundation.max,
          child: UiKitTagSelector(
            onTagSelected: onSelected,
            tags: options.toList(),
          ),
        ),
      ),
      optionsBuilder: (editingValue) {
        if (editingValue.text == '') {
          return const Iterable<String>.empty();
        }

        return options.where((String option) {
          return option.contains(editingValue.text.toLowerCase());
        });
      },
    );
  }
}
