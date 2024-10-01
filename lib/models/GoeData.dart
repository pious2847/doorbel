class GeoData {
  late String title;
  late String image;
  late String location;
  late int rating;
  late String status;

  GeoData(
      {
      required this.title,
      required this.image,
      required this.location,
      required this.rating,
      required this.status});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      "image": image,
      'location': location,
      'rating': rating,
      'status': status
    };
  }

  factory GeoData.fromJson(Map<String, dynamic> json) {
    return GeoData(
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      location: json['location'] ?? '',
      rating: json['rating'] ?? '',
      status: json['status'] ?? '',
    );
  }
}
