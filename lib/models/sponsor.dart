class Sponsor {
  final String name;
  final String logo;
  final String url;

  Sponsor({required this.name, required this.logo, required this.url});

  factory Sponsor.fromJson(Map<String, dynamic> json) {
    return Sponsor(
      name: json['name'],
      logo: json['logo'],
      url: json['url'],
    );
  }  
}