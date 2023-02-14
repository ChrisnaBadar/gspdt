import 'package:flutter/material.dart';

class MobileNavigation extends StatelessWidget {
  const MobileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //buildHeader
            _buildHeader(),
            //BuildMenu
            _buildMenu()
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container();
  }

  Widget _buildMenu() {
    return Container();
  }
}
