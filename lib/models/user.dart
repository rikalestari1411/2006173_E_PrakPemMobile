class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.dummy() {
    return User(
      id: 10,
      name: "Rika Lestari",
      userName: "alhudarika",
      email: "2006173@itg.ac.id",
      profileImage:
          "https://i.postimg.cc/bw5m5zvB/photo-6064177519541728395-y.jpg",
      phoneNumber: "0895361329786",
    );
  }
}
