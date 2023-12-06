import 'package:ana_zah2t/weather_view/search_views.dart';
import 'package:flutter/material.dart';
class Noweather extends StatelessWidget {
    const Noweather({super.key});


@override

Widget build(BuildContext context)
 {
  return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:16),
      child: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'searching now 🔍',
               style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );

  

 }
}
 