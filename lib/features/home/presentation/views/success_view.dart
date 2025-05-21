import 'package:flutter/material.dart';
import '../widgets/balance_widget.dart';

class Success extends StatelessWidget {
  const Success({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Balance(),
    );
  }
}
