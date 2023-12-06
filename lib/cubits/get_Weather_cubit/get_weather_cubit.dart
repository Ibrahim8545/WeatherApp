import 'package:ana_zah2t/cubits/get_Weather_cubit/getWeatherStates.dart';
import 'package:ana_zah2t/models/weather_model.dart';
import 'package:ana_zah2t/services/weather_services.dart';
import 'package:ana_zah2t/weather_view/search_views.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetWeatherCubit extends Cubit<WeatherState>
{
  GetWeatherCubit():super(IntialState());

  WeatherModel? weatherModel;
  getWeather({required String cityName})async
  {
    
    try {
         weatherModel=await WeatherServices(Dio())
          .getCurrentWeather(cityName:cityName);
           emit(WaetherLoadedState(weatherModel!));
} on Exception catch (e)
  {
  // TODO
  emit(WeatherFailurerState());
  }

  

  }

}