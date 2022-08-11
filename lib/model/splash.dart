class SplashPageItem {
  final String header;
  final String subTitle;
  final String assetPath;

  SplashPageItem(this.header, this.subTitle, this.assetPath);

  static List<SplashPageItem> defaultIitems() {
    var items = List.of(<SplashPageItem>[
      SplashPageItem("TOKOTO", "Welcome to Tokto. Let's show!",
          "assets/images/splash_1.png"),
      SplashPageItem(
          "TOKOTO",
          "We help people conect with store \naround United State of America",
          "assets/images/splash_2.png"),
      SplashPageItem(
          "TOKOTO",
          "We show the easy way to shop. \nJust stay at home with us",
          "assets/images/splash_3.png")
    ]);
    return items;
  }
}
