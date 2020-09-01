import 'package:flutter/material.dart';

const kMainDarkColor = Color(0xff2d2d2d);
const kSecondDarkColor = Color(0xff424242);
const kSecondLightColor = Color(0xff838383);
const kMainLightColor = Color(0xffffffff);
const kGoldInkColor = Color(0xffffc491);
const kAccentColor = Color(0xfffe8785);

const kApiKey = '450c215cad4978d0eb8208b4dc0b724d';

const kMovieGenre =
    'https://api.themoviedb.org/3/genre/movie/list?api_key=$kApiKey&language=en-US';
const kPopularMovies =
    'https://api.themoviedb.org/3/movie/popular?api_key=$kApiKey&language=en-US';
const kTopRatedMovies =
    'https://api.themoviedb.org/3/movie/top_rated?api_key=$kApiKey&language=en-US';
const kUpcomingMovies =
    'https://api.themoviedb.org/3/movie/upcoming?api_key=$kApiKey&language=en-US';
const kLastMovies =
    'https://api.themoviedb.org/3/movie/latest?api_key=$kApiKey&language=en-US';
