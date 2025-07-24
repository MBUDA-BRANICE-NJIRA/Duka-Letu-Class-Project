import 'package:flutter/material.dart';

/// A widget that displays a subtitle text with a customizable message.
///
/// This widget uses the app's theme to style the text and ensures
/// consistency with the overall design.
class SubtitleTextWidget extends StatelessWidget {
  /// The text to display as the subtitle.
  final String text;

  /// Creates a [SubtitleTextWidget].
  const SubtitleTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface,
          ) ??
          TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface,
          ),
      textAlign: TextAlign.center,
    );
  }
}
