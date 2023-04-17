class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track medication",
    image: "assets/images/amico.png",
    desc: "You no longer need to worry about getting the right help, we give you access to the best hands",
  ),
  OnboardingContents(
    title: "Get Reminders",
    image: "assets/images/amico2.png",
    desc:
        "You no longer need to worry about getting the right help, we give you access to the best hands",
  ),
  OnboardingContents(
    title: "Unlimited Access to caregivers",
    image: "assets/images/pana.png",
    desc:
        "You no longer need to worry about getting the right help, we give you access to the best hands",
  ),
];
