import 'package:flutter/material.dart';
import '../asset_codes/asset_app_logo.dart';

class DashboardUI extends StatefulWidget {
  @override
  State<DashboardUI> createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _appLogo(),
        Row(
          children: const [
            Text('Feeds'),
            Text('Latest'),
            Text('Popular'),
          ],
        )
      ],
    ));
  }

  Widget _appLogo() {
    try {
      return Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AssetAppLogo(),
            const Text('Sociogram',
                style: TextStyle(fontSize: 25, fontFamily: 'Billabong'))
          ],
        ),
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }
}
