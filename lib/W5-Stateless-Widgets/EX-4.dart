import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

enum Weather{
  phnomPenh('PhnomPenh', 10.0, 30.0, 12.2, 'assets/w5/ex4/cloudy.png', LinearGradient(colors:[Color(0xFFBD59F7), Color(0xFFA32CE8)])),
  paris('Paris', 10.0, 40.0, 22.2, 'assets/w5/ex4/sunny.png', LinearGradient(colors: [Color(0xFF59F7CF), Color(0xFF43D1AE)])),
  rome('Rome', 10.0, 40.0, 45.2, 'assets/w5/ex4/sunnyCloudy.png', LinearGradient(colors: [Color(0xFFEF9A9A), Color(0xFFE57373)])),
  toulouse('Toulouse', 10.0, 40.0, 45.2, 'assets/w5/ex4/veryCloudy.png', LinearGradient(colors: [Color(0xFFFFCC80), Color(0xFFFFB74D)]));

  final String city;
  final double minTemp;
  final double maxTemp;
  final double currentTemp;
  final String image;
  final Gradient gradient;

  const Weather(this.city, this.minTemp, this.maxTemp, this.currentTemp, this.image, this.gradient);
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.menu, 
                color: Colors.white
              )  
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              WeatherCard(weather: Weather.phnomPenh),
              const SizedBox(height: 15),
              WeatherCard(weather: Weather.paris),
              const SizedBox(height: 15),
              WeatherCard(weather: Weather.rome),
              const SizedBox(height: 15),
              WeatherCard(weather: Weather.toulouse),
              const SizedBox(height: 15),
            ],
          )
        )
      )
    );
  }
}

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation:8,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: weather.gradient,
                borderRadius: BorderRadius.circular(12),
              )
            ),
            Positioned(
              right: -30,
              top: -30,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (weather.gradient as LinearGradient).colors.first,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(weather.image),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            weather.city,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            '${weather.minTemp.toString()}°C',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${weather.maxTemp.toString()}°C',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                            ),  
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    '${weather.currentTemp.toString()}°C',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ],
              )
            )
          ],
        )
      );
  }
}

