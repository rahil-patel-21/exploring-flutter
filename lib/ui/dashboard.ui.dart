import 'package:flutter/material.dart';
import '../asset_codes/asset_app_logo.dart';

class DashboardUI extends StatefulWidget {
  @override
  State<DashboardUI> createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Row(
      children: [
        Row(
          children: [
            Container(
              color: Colors.grey,
              width: screenWidth * 0.20,
              child: Column(
                children: [
                  _appLogo(),
                  SizedBox(height: 50),
                  _userProfileSummary(),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [],
        ),
        Row(
          children: [],
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

  Widget _userProfileSummary() {
    try {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _userSummary(),
          SizedBox(height: 50),
          _countSummary(),
        ],
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }

  Widget _userSummary() {
    try {
      return Container(
          child: Column(
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1626469028023-896eda77d814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80')))),
          SizedBox(height: 10),
          Text('Umang Patel'),
          Text('Ahmedabad, Gujarat'),
        ],
      ));
    } catch (error) {
      return const SizedBox.shrink();
    }
  }

  Widget _countSummary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _summaryColumn('POSTS', '130'),
        _summaryColumn('FOLLOWERS', '123'),
        _summaryColumn('FOLLOWING', '232'),
      ],
    );
  }

  Widget _summaryColumn(String title, String value) {
    return Column(
      children: [
        Text(value),
        Text(title),
      ],
    );
  }
}
