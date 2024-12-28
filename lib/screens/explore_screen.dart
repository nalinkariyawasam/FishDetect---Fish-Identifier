import 'package:flutter/material.dart';
import 'package:photo_picker_initial/widgets/app_bar_section.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AppBarSection(),
      ),
    );
  }
}
