import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'hotel_data.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Deskripsi Hotel'),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Carousel(
                detailImagePath: hotel.detailImageHotelList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: HotelInfo(
                name: hotel.namaHotel,
                rating: hotel.rating,
                location: hotel.lokasi,
              ),
            ),
            const TabBar(
              tabs: [
                Tab(text: 'Deskripsi'),
                Tab(text: 'Benefit'),
                Tab(text: 'Alamat'),
                Tab(text: 'Ulasan'),
              ],
            ),
            SizedBox(
              height: 302,
              child: TabBarView(
                children: [
                  Text(hotel.deskripsiTabHotel),
                  Text(hotel.benefitTabHotel),
                  Text(hotel.alamatTabHotel),
                  Text(hotel.ulasanTabHotel),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class for hotel info
class HotelInfo extends StatelessWidget {
  const HotelInfo({
    Key? key,
    required this.name,
    required this.rating,
    required this.location,
  }) : super(key: key);

  final String location;
  final String name;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const IconTheme(
              data: IconThemeData(color: Colors.amber, size: 20),
              child: Icon(Icons.star_rate),
            ),
            Text(rating, style: const TextStyle(fontSize: 15)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const IconTheme(
              data: IconThemeData(color: Colors.grey, size: 20),
              child: Icon(Icons.location_on_outlined),
            ),
            Text(location, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ],
    );
  }
}

// class for carousel(image slider with animation)
class Carousel extends StatefulWidget {
  const Carousel({Key? key, required this.detailImagePath}) : super(key: key);

  final List<String> detailImagePath;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: List.generate(widget.detailImagePath.length, (index) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(widget.detailImagePath[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }),
        ),
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.detailImagePath.length, (index) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.amber : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
