import 'package:flutter/material.dart';
import 'package:themoviedb/theme/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth.dart';
import 'package:themoviedb/widgets/main_screen/main_screen.dart';
import 'package:themoviedb/widgets/movie_details/movie_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreen(),
        '/main_screen/movie_details': (context) {
          final arguments = ModalRoute.of(context)!.settings.arguments;
          if (arguments is int) {
            return MovieDetails(movieId: arguments);
          }
          return const MovieDetails(movieId: 0);
        },
      },
      initialRoute: '/auth',
    );
  }
}
