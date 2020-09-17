import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MoviesSwiper extends StatefulWidget {
  MoviesSwiper(
      {@required this.imgList,
      this.onIndexChange,
      this.movieSwiperLayout = SwiperLayout.DEFAULT});
  final List<String> imgList;
  final Function onIndexChange;
  final SwiperLayout movieSwiperLayout;

  @override
  _MoviesSwiperState createState() => _MoviesSwiperState();
}

class _MoviesSwiperState extends State<MoviesSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      loop: true,
      duration: 1500,
      fade: 0.1,
      autoplay: true,
      itemBuilder: (context, int index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(7.0),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  widget.imgList[index],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 15,
                  width: 200,
                  child: Text(
                    "movie#$index",
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'Teko_Bold',
                    ),
                  ),
                ),
              ],
            ));
      },
      itemCount: widget.imgList.length,
      viewportFraction: 0.75,
      scale: 0.9,
      onIndexChanged: widget.onIndexChange,
      layout: widget.movieSwiperLayout,
      itemWidth: widget.movieSwiperLayout != SwiperLayout.DEFAULT
          ? MediaQuery.of(context).size.width * 0.85
          : null,
    );
  }
}
