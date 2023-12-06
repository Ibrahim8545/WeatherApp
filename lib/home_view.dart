import 'package:ana_zah2t/cubits/get_Weather_cubit/getWeatherStates.dart';
import 'package:ana_zah2t/cubits/get_Weather_cubit/get_weather_cubit.dart';
import 'package:ana_zah2t/weather_view/no_weather.dart';
import 'package:ana_zah2t/weather_view/search_views.dart';
import 'package:ana_zah2t/weather_view/weather_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
      title:const  Text(
        'Weather app',
      ),
        actions: [
        IconButton(
          onPressed:()
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)
          {
            // ignore: prefer_const_constructors
            return SearchView();
          }
          ));

        }, 
        icon: const Icon(
          Icons.search
        ),
        ),
      ],
      ),
      body:BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context, state)
        {
          if(state is IntialState)
          {
            return const Noweather();
          }
          else if(state is WaetherLoadedState)
          {
            return  infoWeather();
          }
          else 
          {
            return Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                
                  child: const Text(
                    'opps there was an error \u{1F603} \u{1F923}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      
                    ),
                    ),
                ),
              ),
            );
          }

        }
      ),
    );
  }
}