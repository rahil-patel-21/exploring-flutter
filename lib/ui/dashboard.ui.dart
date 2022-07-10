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
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Row(
      children: [
        Row(
          children: [
            Container(
              color: Colors.blueGrey,
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
          children: [
            Container(
              height: screenHeight,
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey,
                  width: screenWidth * 0.6,
                  child: _feed(),
                ),
              ),
            ),
          ],
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

  Widget _feed() {
    try {
      return Column(
        children: [
          _watchStory(),
          _posts(),
        ],
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }

  Widget _watchStory() {
    try {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stories', style: TextStyle(fontSize: 30)),
              Text('Watch all'),
            ],
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        child: Icon(Icons.add),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                            border: Border.all(color: Colors.yellow))),
                    SizedBox(height: 5),
                    Text('Add story'),
                  ],
                ),
                _followingsStory('Rahil', false),
                _followingsStory('Joshil', false),
                _followingsStory('Dhruvil', true),
                _followingsStory('Nirali', true),
                _followingsStory('Dhruv', true),
                _followingsStory('Rahil', false),
                _followingsStory('Joshil', false),
                _followingsStory('Dhruvil', true),
                _followingsStory('Nirali', true),
                _followingsStory('Dhruv', true),
              ],
            ),
          )
        ]),
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }

  Widget _followingsStory(String name, bool isWatched) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(
                    color: isWatched ? Colors.black : Colors.yellow, width: 2),
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1626469028023-896eda77d814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80')))),
        SizedBox(height: 5),
        Text(name),
      ],
    );
  }

  Widget _posts() {
    try {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Feeds', style: TextStyle(fontSize: 30)),
              Row(
                children: [
                  Text('Latest'),
                  SizedBox(width: 15),
                  Text('Popular'),
                ],
              )
            ],
          ),
          SizedBox(height: 15),
          _postCard(),
          _postCard(),
          _postCard(),
          _postCard(),
          _postCard(),
          _postCard(),
          _postCard()
        ]),
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }

  Widget _postCard() {
    try {
      return Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Row(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1626469028023-896eda77d814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80')))),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shiv Patel'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Unjha, Gujarat'),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1626469028023-896eda77d814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGluc3RhZ3JhbSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80')))),
        ]),
      );
    } catch (error) {
      return const SizedBox.shrink();
    }
  }
}
