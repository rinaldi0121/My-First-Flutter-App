import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:replica/favourite_button.dart';
import 'package:replica/hotel_data.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 580) {
          return MobileHotelDetails(hotel: hotel);
        } else if (constraints.maxWidth <= 850) {
          return WebHotelDetails(hotel: hotel);
        } else {
          return WebHotelDetails(hotel: hotel);
        }
      },
    );
  }
}

class WebHotelDetails extends StatelessWidget {
  const WebHotelDetails({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
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
                        SafeArea(
                          minimum: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.amber,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const FavouriteButton()
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            hotel.namaHotel,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Carousel(
                            detailImagePath: hotel.detailImageHotelList,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              TabView(hotel: hotel),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileHotelDetails extends StatelessWidget {
  const MobileHotelDetails({Key? key, required this.hotel}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Carousel(detailImagePath: hotel.detailImageHotelList),
                HotelInfo(
                  name: hotel.namaHotel,
                  rating: hotel.rating,
                  location: hotel.kota,
                ),
                TabView(hotel: hotel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
            autoPlayInterval: const Duration(seconds: 5),
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
                return GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(widget.detailImagePath[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () {
                    showImageViewer(
                      context,
                      Image.asset(widget.detailImagePath[index]).image,
                      swipeDismissible: false,
                    );
                  },
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

class TabView extends StatelessWidget {
  const TabView({Key? key, required this.hotel}) : super(key: key);

  final HotelData hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TabBarView(
              children: [
                Text(hotel.deskripsiTabHotel),
                Text(hotel.benefitTabHotel),
                Text(hotel.alamatTabHotel),
                Text(hotel.ulasanTabHotel),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
