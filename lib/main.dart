import 'package:flutter/material.dart';

import 'ui/global/widgets/bottom_navigation.dart';
import 'ui/screens/details/details.dart';
import 'ui/screens/favorite.dart';
import 'ui/screens/movies/movies.dart';
import 'ui/screens/tv_shows.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final List<Widget> screens = [
    MoviesPage(),
    TvShowsPage(),
    DetailsPage(),
    FavoritePage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: AppNavigation(screens: screens))),
    );
  }
}
/*
class FireStoreSlideShow extends StatefulWidget {
  @override
  _FireStoreSlideShowState createState() => _FireStoreSlideShowState();
}

class _FireStoreSlideShowState extends State<FireStoreSlideShow> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  Stream slides ;
  int currentPage = 0;

  _buildStoryPage(Map data, bool active) {
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 100 : 200;

    return AnimatedContainer(
      child: Text(
        "demo",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(top: top, bottom: 50, right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("images/1.jpg"),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ],
      ),
    );
  }

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: slides,
      initialData: [],
      builder: (context, AsyncSnapshot snap) {
        List slideList = snap.data.toList();
        return PageView.builder(
            controller: _pageController,
            itemCount: slideList.length,
            itemBuilder: (context, int currentIdx) {
              if (slideList.length >= currentIdx) {//----------------------
                bool active = currentIdx == currentPage;
                return _buildStoryPage(slideList[currentIdx - 1], active);
              }
            });
      },
    );
  }
}
*/
