import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp_flutterbloc/src/bloc/weather_bloc.dart';
import 'package:weatherapp_flutterbloc/src/widgets/background_decoration.dart';
import 'package:weatherapp_flutterbloc/src/widgets/bottom_first.dart';
import 'package:weatherapp_flutterbloc/src/widgets/bottom_second.dart';
import 'package:weatherapp_flutterbloc/src/widgets/city_content.dart';
import 'package:weatherapp_flutterbloc/src/widgets/forecast_content.dart';
import 'package:weatherapp_flutterbloc/src/widgets/main_temp_content.dart';
import 'package:weatherapp_flutterbloc/src/widgets/time_day_content.dart';
import 'package:weatherapp_flutterbloc/src/widgets/weather_icon.dart';
import 'package:weatherapp_flutterbloc/src/widgets/welcome_message.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherIcon weatherIcon = WeatherIcon();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  const BackgroundDecoration(),
                  BlocBuilder<WeatherBloc, WeatherState>(
                    builder: (context, state) {
                      if (state is WeatherSuccess) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CityContent(
                                cityName: "${state.weather.areaName}",
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const WelcomeMessage(),
                              weatherIcon.getImage(
                                  state.weather.weatherConditionCode!),
                              MainTempContent(
                                temp: state.weather.temperature!.celsius!
                                    .round()
                                    .toString(),
                              ),
                              ForecastContent(
                                forecast: state.weather.weatherMain!,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TimeDayContent(
                                timeDay: DateFormat('EEEE dd -')
                                    .add_jm()
                                    .format(state.weather.date!),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              BottomFirst(
                                sunrise: DateFormat()
                                    .add_jm()
                                    .format(state.weather.sunrise!),
                                sunset: DateFormat()
                                    .add_jm()
                                    .format(state.weather.sunset!),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              BottomSecond(
                                tempMax: state.weather.tempMax!.celsius!
                                    .round()
                                    .toString(),
                                tempMin: state.weather.tempMin!.celsius!
                                    .round()
                                    .toString(),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
