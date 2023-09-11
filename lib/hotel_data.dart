class HotelData {
  HotelData({
    required this.namaHotel,
    required this.kota,
    required this.jumlahPengunjung,
    required this.rating,
    required this.imageListAsset,
    required this.lokasi,
    required this.detailImageHotelList,
    required this.deskripsiTabHotel,
    required this.benefitTabHotel,
    required this.alamatTabHotel,
    required this.ulasanTabHotel,
  });

  String alamatTabHotel;
  String benefitTabHotel;
  String deskripsiTabHotel;
  List<String> detailImageHotelList;
  String imageListAsset;
  num jumlahPengunjung;
  String kota;
  String lokasi;
  String namaHotel;
  String rating;
  String ulasanTabHotel;
}

var hotelDataList = [
  HotelData(
    namaHotel: 'Adimulia Hotel',
    kota: 'Medan',
    jumlahPengunjung: 199,
    rating: '4/5',
    imageListAsset: 'assets/images/adimulia.jpg',
    lokasi: 'Medan, pokoknya medan lah',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg'
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Adimulia lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya",
  ),
  HotelData(
    namaHotel: 'Aryaduta',
    kota: 'Medan',
    jumlahPengunjung: 20,
    rating: '3/5',
    imageListAsset: 'assets/images/aryaduta.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Aryaduta lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Fave Hotel',
    kota: 'Medan',
    jumlahPengunjung: 290,
    rating: '5/5',
    imageListAsset: 'assets/images/favehotel.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Favehotel lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand Central Hotel',
    kota: 'Medan',
    jumlahPengunjung: 99,
    rating: '2/5',
    imageListAsset: 'assets/images/grand-central.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand Central lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand City Hall Hotel',
    kota: 'Medan',
    jumlahPengunjung: 1213,
    rating: '5/5',
    imageListAsset: 'assets/images/grand-cityHall.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand City Hall lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grandhika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 321,
    rating: '5/5',
    imageListAsset: 'assets/images/grandhika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grandhika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Karibia Boutique Hotel',
    kota: 'Medan',
    jumlahPengunjung: 4324,
    rating: '1/5',
    imageListAsset: 'assets/images/karibia-boutique.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Karibia Boutique lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Radisson Hotel',
    kota: 'Medan',
    jumlahPengunjung: 542,
    rating: '5/5',
    imageListAsset: 'assets/images/radisson.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Radisson lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Santika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 32423,
    rating: '2/5',
    imageListAsset: 'assets/images/santika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Santika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Swiss Belinn Hotel',
    kota: 'Medan',
    jumlahPengunjung: 323,
    rating: '4/5',
    imageListAsset: 'assets/images/swiss-belinn.jpeg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Swiss Belinn lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Adimulia Hotel',
    kota: 'Medan',
    jumlahPengunjung: 199,
    rating: '4/5',
    imageListAsset: 'assets/images/adimulia.jpg',
    lokasi: 'Medan, pokoknya medan lah',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg'
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Adimulia lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya",
  ),
  HotelData(
    namaHotel: 'Aryaduta',
    kota: 'Medan',
    jumlahPengunjung: 20,
    rating: '3/5',
    imageListAsset: 'assets/images/aryaduta.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Aryaduta lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Fave Hotel',
    kota: 'Medan',
    jumlahPengunjung: 290,
    rating: '5/5',
    imageListAsset: 'assets/images/favehotel.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Favehotel lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand Central Hotel',
    kota: 'Medan',
    jumlahPengunjung: 99,
    rating: '2/5',
    imageListAsset: 'assets/images/grand-central.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand Central lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand City Hall Hotel',
    kota: 'Medan',
    jumlahPengunjung: 1213,
    rating: '5/5',
    imageListAsset: 'assets/images/grand-cityHall.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand City Hall lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grandhika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 321,
    rating: '5/5',
    imageListAsset: 'assets/images/grandhika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grandhika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Karibia Boutique Hotel',
    kota: 'Medan',
    jumlahPengunjung: 4324,
    rating: '1/5',
    imageListAsset: 'assets/images/karibia-boutique.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Karibia Boutique lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Radisson Hotel',
    kota: 'Medan',
    jumlahPengunjung: 542,
    rating: '5/5',
    imageListAsset: 'assets/images/radisson.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Radisson lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Santika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 32423,
    rating: '2/5',
    imageListAsset: 'assets/images/santika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Santika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Swiss Belinn Hotel',
    kota: 'Medan',
    jumlahPengunjung: 323,
    rating: '4/5',
    imageListAsset: 'assets/images/swiss-belinn.jpeg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Swiss Belinn lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Adimulia Hotel',
    kota: 'Medan',
    jumlahPengunjung: 199,
    rating: '4/5',
    imageListAsset: 'assets/images/adimulia.jpg',
    lokasi: 'Medan, pokoknya medan lah',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg'
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Adimulia lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya",
  ),
  HotelData(
    namaHotel: 'Aryaduta',
    kota: 'Medan',
    jumlahPengunjung: 20,
    rating: '3/5',
    imageListAsset: 'assets/images/aryaduta.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Aryaduta lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Fave Hotel',
    kota: 'Medan',
    jumlahPengunjung: 290,
    rating: '5/5',
    imageListAsset: 'assets/images/favehotel.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Favehotel lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand Central Hotel',
    kota: 'Medan',
    jumlahPengunjung: 99,
    rating: '2/5',
    imageListAsset: 'assets/images/grand-central.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand Central lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grand City Hall Hotel',
    kota: 'Medan',
    jumlahPengunjung: 1213,
    rating: '5/5',
    imageListAsset: 'assets/images/grand-cityHall.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grand City Hall lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Grandhika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 321,
    rating: '5/5',
    imageListAsset: 'assets/images/grandhika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Grandhika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Karibia Boutique Hotel',
    kota: 'Medan',
    jumlahPengunjung: 4324,
    rating: '1/5',
    imageListAsset: 'assets/images/karibia-boutique.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Karibia Boutique lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Radisson Hotel',
    kota: 'Medan',
    jumlahPengunjung: 542,
    rating: '5/5',
    imageListAsset: 'assets/images/radisson.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Radisson lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Santika Hotel',
    kota: 'Medan',
    jumlahPengunjung: 32423,
    rating: '2/5',
    imageListAsset: 'assets/images/santika.jpg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/aryaduta1.jpg',
      'assets/images/aryaduta2.jpg',
      'assets/images/aryaduta3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Santika lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
  HotelData(
    namaHotel: 'Swiss Belinn Hotel',
    kota: 'Medan',
    jumlahPengunjung: 323,
    rating: '4/5',
    imageListAsset: 'assets/images/swiss-belinn.jpeg',
    lokasi: 'Di medan juga',
    detailImageHotelList: [
      'assets/images/adimulia1.jpg',
      'assets/images/adimulia2.jpg',
      'assets/images/adimulia3.jpg',
    ],
    deskripsiTabHotel: "Pokoknya deskripsi Swiss Belinn lah",
    benefitTabHotel: "Dapat kamar lah pokoknya",
    alamatTabHotel: "Di sekitaran medan. Cari aja di Gmap",
    ulasanTabHotel: "Bagus lah pokoknya, mungkin",
  ),
];
