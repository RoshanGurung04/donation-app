class Victims {
  final String imgurl;
  final String type;
  final String summary;
  Victims(this.imgurl, this.type, this.summary);
}

int donatorsNum = 145;
List<Victims> victimsList = [
  Victims("asset/images/protectchild.png", "Protect Child",
      '''Fairfield, Conn. (May 1, 2015) — One week after the deadly earthquake in Nepal, Save the Children warns that more than a third of a million children face months sleeping out in harsh conditions after their homes were destroyed.
In the most remote mountainous regions, only reachable currently by helicopter, children and babies are sleeping outdoors without any protection from the cold, nighttime temperatures and heavy rainfall.

In more accessible areas tarps, blankets and baby kits have been distributed in temporary displacement camps, but children remain vulnerable to disease from the cold and unsanitary conditions they are living in.

Kesang, a first-time mother speaking from a maternity ward, said she was terrified of taking her new born baby back to sleep outside. "We only have a plastic sheet to cover us and the ground easily becomes flooded – we have to stay standing all night. Disease spreads easily in these conditions, I'm really worried that my baby and I will get sick."

Parents sleeping outside are reporting fevers, outbreaks of diarrhea and the risk of pneumonia. There is also a serious risk from asbestos – many homes and offices in Nepal were built using asbestos and the earthquake has exposed it.'''),
  Victims("asset/images/homeless.png", "Homeless Children",
      '''Fairfield, Conn. (May 1, 2015) — One week after the deadly earthquake in Nepal, Save the Children warns that more than a third of a million children face months sleeping out in harsh conditions after their homes were destroyed.
In the most remote mountainous regions, only reachable currently by helicopter, children and babies are sleeping outdoors without any protection from the cold, nighttime temperatures and heavy rainfall.

In more accessible areas tarps, blankets and baby kits have been distributed in temporary displacement camps, but children remain vulnerable to disease from the cold and unsanitary conditions they are living in.

Kesang, a first-time mother speaking from a maternity ward, said she was terrified of taking her new born baby back to sleep outside. "We only have a plastic sheet to cover us and the ground easily becomes flooded – we have to stay standing all night. Disease spreads easily in these conditions, I'm really worried that my baby and I will get sick."

Parents sleeping outside are reporting fevers, outbreaks of diarrhea and the risk of pneumonia. There is also a serious risk from asbestos – many homes and offices in Nepal were built using asbestos and the earthquake has exposed it.'''),
  Victims("asset/images/trafficking.png", "Sex Trafficking",
      '''Fairfield, Conn. (May 1, 2015) — One week after the deadly earthquake in Nepal, Save the Children warns that more than a third of a million children face months sleeping out in harsh conditions after their homes were destroyed.
In the most remote mountainous regions, only reachable currently by helicopter, children and babies are sleeping outdoors without any protection from the cold, nighttime temperatures and heavy rainfall.

In more accessible areas tarps, blankets and baby kits have been distributed in temporary displacement camps, but children remain vulnerable to disease from the cold and unsanitary conditions they are living in.

Kesang, a first-time mother speaking from a maternity ward, said she was terrified of taking her new born baby back to sleep outside. "We only have a plastic sheet to cover us and the ground easily becomes flooded – we have to stay standing all night. Disease spreads easily in these conditions, I'm really worried that my baby and I will get sick."

Parents sleeping outside are reporting fevers, outbreaks of diarrhea and the risk of pneumonia. There is also a serious risk from asbestos – many homes and offices in Nepal were built using asbestos and the earthquake has exposed it.'''),
  Victims("asset/images/slavery.png", "Slavery",
      '''Fairfield, Conn. (May 1, 2015) — One week after the deadly earthquake in Nepal, Save the Children warns that more than a third of a million children face months sleeping out in harsh conditions after their homes were destroyed.
In the most remote mountainous regions, only reachable currently by helicopter, children and babies are sleeping outdoors without any protection from the cold, nighttime temperatures and heavy rainfall.

In more accessible areas tarps, blankets and baby kits have been distributed in temporary displacement camps, but children remain vulnerable to disease from the cold and unsanitary conditions they are living in.

Kesang, a first-time mother speaking from a maternity ward, said she was terrified of taking her new born baby back to sleep outside. "We only have a plastic sheet to cover us and the ground easily becomes flooded – we have to stay standing all night. Disease spreads easily in these conditions, I'm really worried that my baby and I will get sick."

Parents sleeping outside are reporting fevers, outbreaks of diarrhea and the risk of pneumonia. There is also a serious risk from asbestos – many homes and offices in Nepal were built using asbestos and the earthquake has exposed it.''')
];

class DonationHistory {
  final String date;
  final String fund;
  final double ammount;
  DonationHistory(this.date, this.fund, this.ammount);
}

List<DonationHistory> donationHistory = [
  DonationHistory("Jan 01", "Homeless Child", 70),
  DonationHistory("Jan 17", "Slavery", 17),
  DonationHistory("Feb 05", "Protect Child", 113),
  DonationHistory("March 24", "Sex Trafficking", 29),
  DonationHistory("Jan 01", "Homeless Child", 70),
  DonationHistory("Jan 17", "Slavery", 17),
  DonationHistory("Feb 05", "Protect Child", 113),
  DonationHistory("March 24", "Sex Trafficking", 29),
];

List donators = [
  "asset/images/profile.png",
  "asset/images/profile.png",
  "asset/images/profile.png",
  "asset/images/profile.png",
];

List paymentOptions = [
  "asset/images/esewa.png",
  "asset/images/image16.png",
  "asset/images/image17.png",
  "asset/images/image18.png",
  "asset/images/image19.png",
  "asset/images/image20.png"
];
