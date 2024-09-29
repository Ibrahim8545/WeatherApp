import 'package:ana_zah2t/weather_view/search_views.dart';
import 'package:flutter/material.dart';
class Noweather extends StatelessWidget {
    const Noweather({super.key});


@override

Widget build(BuildContext context)
 {
  return  Padding(
      padding: const  EdgeInsets.symmetric(horizontal:16),
      child: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('assets/images/weathergif.jpg')),
            const Text(
              'there is no weather 😔 ',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
           const  Text(
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
 