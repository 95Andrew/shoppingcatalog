import 'package:flutter/material.dart';
import 'package:shoppingcatalog/shared/app_const.dart';

class ErrorContent extends StatelessWidget {
  final VoidCallback onTapRetry;

  const ErrorContent({
    Key? key,
    required this.onTapRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onTapRetry,
        child: Text(
          retry.toUpperCase(),
        ),
      ),
    );
  }
}
