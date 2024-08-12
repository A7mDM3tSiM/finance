class Step {
  final String image;
  final String title;
  final String subTitle;

  const Step({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

const steps = [
  Step(
    image: "assets/screen_one.png",
    title: "Save your money\nconveniently.",
    subTitle: "Get 5% cash back for each\ntransaction and spend it easily.",
  ),
  Step(
    image: "assets/screen_two.png",
    title: "Secure your money for\nfree and get rewards.",
    subTitle: "Get the most secure payment\napp ever and enjoy it.",
  ),
  Step(
    image: "assets/screen_three.png",
    title: "Enjoy commission-free\nstock trading.",
    subTitle: "Online investing has never been\neasier than it is right now.",
  ),
];
