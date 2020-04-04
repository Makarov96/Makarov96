import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/ui/screens/screenmovies.dart';
import 'Movies/bloc/blocmovies.dart';
import 'Movies/ui/screens/screenreviewmovie.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    );
    return MultiBlocProvider(
        providers: [
          BlocProvider<BlocMovies>(create: (context)=>BlocMovies())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ScreenMovies(),
          routes: <String, WidgetBuilder>{
        '/reviewmovies': (BuildContext context) => ScreenReviewMovie(),
      },
        ));
  }
}

/*


*/
