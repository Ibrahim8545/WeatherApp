
import 'package:ana_zah2t/cubits/get_Weather_cubit/get_weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'search city'
        ),
    
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted : (String value)async
            {
              var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
         
           // ignore: use_build_context_synchronously
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16
              ),
              suffixIcon:  Icon(Icons.search),
              hintText: 'Enter your city',
              label: Text(
                'Search',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              border: OutlineInputBorder(
              borderSide:  BorderSide(
                  color:   Colors.black,
                ),
              
              ),
              // enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              //   borderSide: BorderSide(
              //     color:   Colors.amber,
              //   ),
              // ),
              // focusedBorder: OutlineInputBorder( ),
            ),
          ),
        ),
      ),
      
    );
  }
}
