
import 'package:ana_zah2t/cubits/get_Weather_cubit/get_weather_cubit.dart';
import 'package:ana_zah2t/main.dart';
import 'package:ana_zah2t/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: camel_case_types
class infoWeather extends StatelessWidget {
    const infoWeather({Key? key}):super(key: key);
@override

Widget build(BuildContext context)
 {
WeatherModel? weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
  return Container(
   decoration: BoxDecoration(
    gradient: LinearGradient(
      colors:[
         getWeatherColor(weatherModel.weatherCondition),
          getWeatherColor(weatherModel.weatherCondition)[300]!,
           getWeatherColor(weatherModel.weatherCondition)[50]!
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter, 
      ),
   ),
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              weatherModel.cityName,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
              ),
            ),
             Text(
              'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
      
              height: 32.0,
            ),   
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Image.network(
           "https:${ weatherModel.image}",
           ),
           Text(
            weatherModel.temp.round().toString(),
            style:const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),
           ),
          
            Column(
            children: [
              Text(
                'Maxtemp: ${weatherModel.maxtemp.ceil()}',
                  style: const TextStyle(
              fontSize:16,
            
            ),
        
              ),
                 Text(
                'Mintemp: ${weatherModel.mintemp.ceil()}',
                  style: const TextStyle(
                    fontSize:16,
            
                ),
        ),
       ],
           ),
                        
            ],
          ),
          const SizedBox(
            height: 32,
           
           ),
           Text(
              weatherModel.weatherCondition,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),
           ),
          
          ],
        ),
      ),
  );
   



 }
}

 