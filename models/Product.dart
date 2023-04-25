// complete
class Product {
  final String image, title, description,genre,author;
  final int price,id;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.genre,
    this.author,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Harry potter and the prisoner of azkaban",
      price: 399,
      description: harryplot,
      image: "assets/images/harry3.jpg",
      genre: "fantasy",
      author: "JK.Rowling"),
  Product(
      id: 2,
      title: "Outlander",
      price: 234,
      description: outlanderplot,
      image: "assets/images/outlander.jpg",
      genre: "Romance",
      author: "Diana gablodon"),
  Product(
      id: 3,
      title: "Good Omens",
      price: 100,
      description: goodoplot,
      image: "assets/images/good omens.jpg",
      genre: "Comedy",
      author: "Neil Gaiman"),
  Product(
      id: 4,
      title: "It",
      price: 234,
      description: itplot,
      image: "assets/images/It.jpg",
      genre: "Horror",
      author: "Stephen King"),
  Product(
      id: 5,
      title: "witchoars",
      price: 198,
      description: witchoarsplot,
      image: "assets/images/witchoars.jpg",
      genre: "Fantasy",
      author: "กัลฐิดา"),
  Product(
      id: 6,
      title: "Things we never get over",
      price: 200,
      description: thingplot,
      image: "assets/images/things we will never get over.jpg",
      genre: "Romance",
      author: "Lucy Score"),
];

String harryplot = "While Harry is living with the Dursleys, Aunt Marge comes to visit. When he and his late parents are insulted by Marge, an angry Harry accidentally inflates her. Harry packs up his stuff and leaves the house, choosing to spend the summer at the Leaky Cauldron inn in London. While there, Harry is warned that a former follower of Voldemort, named Sirius Black, is seeking him out after having escaped from the wizard prison, Azkaban.";
String outlanderplot ="In 1946, after working apart during the Second World War, former British Army nurse Claire Randall and her husband Frank Randall, a history professor, go on a second honeymoon to Inverness, Scotland. Frank conducts research into his family history and Claire goes plant-gathering near standing stones on the hill of Craigh na Dun";
String goodoplot ="Aziraphale, an angel (originally a guardian of the gates of Eden), and Crowley, a demon (originally the serpent who tempted Eve) have lived on Earth since its creation. Over the millennia, they have formed an odd friendship and taken a liking to humanity. One night, the forces of Hell deliver the infant Antichrist to Crowley, with instructions to swap him with the son of an American diplomat stationed in Britain. Crowley realizes this means that the Apocalypse is coming and persuades Aziraphale to help him prevent it. Together, they decide to influence the Antichrist's upbringing by posing as a nanny and a gardener so that the child can never really decide between Good and Evil.";
String itplot ="During a rainstorm in Derry, Maine, a six-year-old boy named Georgie Denbrough sails a paper boat along the rainy streets before it washes down into a storm drain. Looking in the drain, Georgie encounters a clown who introduces himself as Pennywise the Dancing Clown. Georgie, despite knowing he should not talk to strangers, is enticed by Pennywise to reach into the drain and retrieve his boat. It then rips his arm off, and Georgie dies.";
String witchoarsplot= "jay scott woke up on his own house with amnesia and must find his lost past through the diary that was written by his past self";
String thingplot= "The story follows Naomi (36), a runaway bride who finds herself in a small town she's unfamiliar with while her life falls apart. Naomi is now single, jobless, broke, homeless, and the 11-year-old niece she just found out about is suddenly in her care.";