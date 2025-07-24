import 'package:flutter/material.dart';

/// A widget that displays a subtitle text with a predefined message.
///
/// This widget uses the app's theme to style the text and ensures
/// consistency with the overall design.
class SubtitleTextWidget extends StatelessWidget {
  /// Creates a [SubtitleTextWidget].
  const SubtitleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your one-stop shop for everything!",
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
