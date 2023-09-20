import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:replica/second.dart';
import 'package:replica/hotel_data.dart';

import 'favourite_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reservasi Hotel',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Reservasi Hotel'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 580) {
            return const HotelGridTemplate(count: 1);
          } else if (constraints.maxWidth <= 850) {
            return const HotelGridTemplate(count: 2);
          } else {
            return const HotelGridTemplate(count: 3);
          }
        },
      ),
    );
  }
}

class HotelGridTemplate extends StatelessWidget {
  const HotelGridTemplate({Key? key, required this.count}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: count,
      children: hotelDataList.map((hotel) {
        return CardList(hotel: hotel);
      }).toList(),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.hotel,
  });

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GestureDetector(
                child: Image.asset(
                  hotel.imageListAsset,
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  showImageViewer(
                    context,
                    Image.asset(hotel.imageListAsset).image,
                    swipeDismissible: false,
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        hotel.namaHotel,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        hotel.kota,
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Text(
                              '${hotel.jumlahPengunjung} Pengunjung',
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const IconTheme(
                              data: IconThemeData(
                                color: Colors.amber,
                                size: 18,
                              ),
                              child: Icon(Icons.star_rate),
                            ),
                            Text(
                              hotel.rating,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const FavouriteButton(),
                            NavIconForward(hotel: hotel),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavIconForward extends StatelessWidget {
  const NavIconForward({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CircleAvatar(
        backgroundColor: Colors.amber,
        child: IconButton(
          icon: const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            size: 14,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HotelDetails(hotel: hotel);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
