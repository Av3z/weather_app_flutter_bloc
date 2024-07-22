import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp_flutterbloc/src/bloc/weather_bloc.dart';
import 'package:weatherapp_flutterbloc/src/pages/home_page.dart';
import 'package:weatherapp_flutterbloc/src/services/location_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    LocationService locationService = LocationService();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<Position>(
        future: locationService.getPosition(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error: ${snapshot.error}'),
              ),
            );
          } else if (snapshot.hasData) {
            return BlocProvider<WeatherBloc>(
              create: (context) =>
                  WeatherBloc()..add(FetchWeather(snapshot.data!)),
              child: const HomePage(),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: Text('Failed to get location.'),
              ),
            );
          }
        },
      ),
    );
  }
}
