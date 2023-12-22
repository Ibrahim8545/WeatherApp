
import 'package:ana_zah2t/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherServices
{
  final Dio dio;
  final String baseurl='http://api.weatherapi.com/v1';
  final String apiKey='3bf260e8a8a64595bdb192633232610';
  WeatherServices(this.dio);
  Future< WeatherModel> getCurrentWeather({required String cityName})async
  {
    try
    {
      Response response= await dio.
      get('$baseurl/forecast.json?key=$apiKey&q=$cityName&days=1');
    // give status of response if good or not
       WeatherModel weatherModel=WeatherModel.fromJson(response.data);
       return weatherModel;
    }
    on DioException catch(e)
    {
      final String errorMessage=e.response?.data['error']['message']??'oops there was an error, try later';
     throw Exception(errorMessage);
    }
    catch(e)
    {
      print(e.toString());
       throw Exception('oop there was an error, try later');
    }
    
  }


}