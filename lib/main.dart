import 'package:flutter/material.dart';
import 'package:replica/second.dart';
import 'package:replica/hotel_data.dart';

void main() {
  runApp(const MyApp());
}

// myapp stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservasi Hotel',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

// myhomepage using stateless widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Reservasi Hotel'),
      ),
      body: const HotelMobileTemplateCard(),
    );
  }
}

// hotel card stateless
class HotelMobileTemplateCard extends StatelessWidget {
  const HotelMobileTemplateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
        // item count data length
        itemCount: hotelDataList.length,
        itemBuilder: (context, index) {
          final HotelData hotel = hotelDataList[index];
          return Container(
            height: 350,
            padding: const EdgeInsets.all(5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 215,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        // data path image
                        hotel.imageListAsset,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: SizedBox(
                      height: 114,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    // data namaHotel
                                    hotel.namaHotel,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    // data kota
                                    hotel.kota,
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    // data jumlah pengunjung
                                    '${hotel.jumlahPengunjung} Pengunjung',
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(width: 45),
                                  const IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    child: Icon(Icons.star_rate),
                                  ),
                                  Text(
                                    // data rating
                                    hotel.rating,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const FavouriteButton(),
                              const SizedBox(width: 15),
                              // parameter diisikan widget untuk navigasi
                              NavIconForward(hotel: hotel),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// navigation icon forward class
class NavIconForward extends StatelessWidget {
  const NavIconForward({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

// inisialisasikan index dari list class kedalam parameter

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.amber,
      child: IconButton(
        icon: const Icon(Icons.arrow_forward_outlined, color: Colors.white),
        //navigasi disini
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
    );
  }
}

// icon favourite stateless
class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 35,
      ),
      onPressed: () {
        setState(
          () {
            isFavorite = !isFavorite;
          },
        );
      },
    );
  }
}
