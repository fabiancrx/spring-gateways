
import 'package:flutter/material.dart';

import 'package:gateway_frontend/src/router/app_router.dart';
import 'package:go_router/go_router.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox.square(dimension: 32),
            OutlinedButton(
              onPressed: () => context.goNamed(AppRoute.home.name),
              child: Text('Go Home'),
            )
          ],
        ),
      ),
    );
  }
}
