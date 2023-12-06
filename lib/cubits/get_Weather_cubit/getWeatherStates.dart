import 'package:ana_zah2t/models/weather_model.dart';

class WeatherState
{

}

class IntialState extends WeatherState
{

}


class WaetherLoadedState extends WeatherState
{
   WeatherModel weatherModel;
   WaetherLoadedState(this.weatherModel);
}



class WeatherFailurerState extends WeatherState
{

}