import 'package:flutter/cupertino.dart';

import '../models/category.dart';
import '../models/anime.dart';
import 'package:flutter/material.dart';

const Dummy_Categories = const [
  Category(id: '1', title: 'Action', image: 'assets/images/action.jpg'),
  Category(id: '2', title: 'Drama', image: 'assets/images/shounen.jpg'),
  Category(id: '3', title: 'Romance', image: 'assets/images/romance.jpeg'),
  Category(
      id: '4',
      title: 'Slice Of Life',
      image: 'assets/images/slice_of_life.jpg'),
  Category(id: '5', title: 'Mystery', image: 'assets/images/mystery.jpg'),
  Category(
      id: '6', title: 'Supernatural', image: 'assets/images/supernatural.jpg'),
  Category(id: '7', title: 'Comedy', image: 'assets/images/comedy.jpg'),
  Category(id: '8', title: 'Adventure', image: 'assets/images/adventure.jpg'),
  Category(id: '9', title: 'Fantasy', image: 'assets/images/fantasy.jpg'),
  Category(id: '10', title: 'Sci-Fi', image: 'assets/images/scifi.jpg'),
];

const Dummy_Anime = const [
  Anime(
    id: '1',
    genre: ['Action', 'Adventure', 'Comedy'],
    title: 'Naruto Shipuden',
    imageUrl:
        'https://movieposterhd.com/wp-content/uploads/2021/01/Naruto-Poster-HD-Wallpaper.jpg',
    description:
        'Naruto (ナルト) is a Japanese manga and anime series created by Masashi Kishimoto. It follows an orphaned ninja who dreams to become "Hokage". The Hokage is the strongest ninja and the leader for the village, called Konoha (meaning "leaf" in Japanese). As the series progresses, Naruto and his friends begin to solve the ancient history of the ninja world. His friends including Sasuke Uchiha and Sakura Haruno. Their teacher is Kakashi Hatake. The manga was first published in 1999 in a Japanese magazine called Shonen Jump. It was also translated into English. The anime series premiered in Japan in October 2002. In the United States, it started in September 2005.',
    information: {'Studio': 'Pierrot'},
    rank: 8.23,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '2',
    genre: ['Romance', 'Comedy'],
    title: 'Wotaku Ni Koi Wa Muzukashii',
    imageUrl: 'https://wallpaperaccess.com/full/2891515.png',
    description:
        'A Japanese webmanga series written and illustrated by Fujita. It was first posted on Pixiv on April 17, 2014. It began serialization in Comic Pool (a joint web manga publication project by Ichijinsha and Pixiv) on November 6, 2015. Ichijinsha began publishing the manga in print on April 30, 2015 and ten volumes had been published, with over 10 million copies printed (including digital edition) as of August 2020. An anime adaptation by A-1 Pictures aired from April to June 2018 on the Noitamina programming block.',
    information: {'Studio': 'A-1 Picture'},
    rank: 7.95,
    type: Type.Episode,
    finish: false,
  ),
  Anime(
    id: '3',
    genre: ['Slice Of Life', 'Supernatural'],
    title: 'Natsume Yuujinchou',
    imageUrl: 'https://images6.alphacoders.com/764/764329.jpg',
    description:
        'Natsume\'s Book of Friends (Japanese: 夏目友人帳, Hepburn: Natsume Yūjin-chō) is a Japanese manga series by Yuki Midorikawa. It began serialization by Hakusensha in the shōjo manga magazine LaLa DX in 2005, before switching to LaLa in 2008. The chapters have been collected in twenty-seven bound volumes. The series is about Natsume, an orphaned teenage boy who can see spirits, who inherits from his grandmother the notebook she used to bind spirits under her control. Natsume\'s Book of Friends was a finalist for the first Manga Taishō award in 2008.[3]',
    information: {'Studio': 'Brain\'s Base'},
    rank: 8.32,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '4',
    genre: ['Action', 'Drama'],
    title: 'Neon Genesis Evangelion',
    imageUrl:
        'https://www.teahub.io/photos/full/64-643458_neon-genesis-evangelion-wallpaper.jpg',
    description:
        'Neon Genesis Evangelion[4] (Japanese: 新世紀エヴァンゲリオン, Hepburn: Shinseiki Evangerion, lit. "New Century Gospel") is a Japanese mecha anime television series produced by Gainax and animated by Tatsunoko, directed by Hideaki Anno and broadcast on TV Tokyo from October 1995 to March 1996. The cast included Megumi Ogata as Shinji Ikari, Kotono Mitsuishi as Misato Katsuragi, Megumi Hayashibara as Rei Ayanami, and Yūko Miyamura as Asuka Langley Soryu. Music for the series was composed by Shirō Sagisu.',
    information: {'Studio': 'Gainax, Tatsunoko Production'},
    rank: 8.34,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '5',
    genre: ['Mystery'],
    title: 'Tokyo Ghoul',
    imageUrl: 'https://wallpaperaccess.com/full/5437116.jpg',
    description:
        'Tokyo Ghoul (Japanese: 東京喰種トーキョーグール, Hepburn: Tōkyō Gūru) is a Japanese dark fantasy manga series written and illustrated by Sui Ishida. It was serialized in Shueisha\'s seinen manga magazine Weekly Young Jump between September 2011 and September 2014, and was collected in fourteen tankōbon volumes. A prequel, titled Tokyo Ghoul [Jack], ran online on Jump Live in 2013 and was collected in a single tankōbon volume. A sequel, titled Tokyo Ghoul:re, was serialized in Weekly Young Jump between October 2014 and July 2018, and was collected in sixteen tankōbon volumes.',
    information: {'Studio': 'Pierrot'},
    rank: 7.80,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '6',
    genre: ['Action', 'Adventure', 'Comedy', 'Drama'],
    title: 'One Piece',
    imageUrl:
        'https://static.wikia.nocookie.net/onepiece/images/d/da/Bajak_Laut_Infobox.png/revision/latest?cb=20190929164255&path-prefix=id',
    description:
        'One Piece (stylized in all caps) is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump since July 1997, with its individual chapters compiled into 101 tankōbon volumes as of December 2021. The story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit. With his pirate crew, the Straw Hat Pirates, Luffy explores the Grand Line in search of the world\'s ultimate treasure known as the "One Piece" in order to become the next King of the Pirates.',
    information: {'Studio': 'Toei Animation'},
    rank: 8.62,
    type: Type.Episode,
    finish: false,
  ),
  Anime(
    id: '7',
    genre: ['Supernatural', 'Romance', 'Drama'],
    title: 'Kimi no Na wa',
    imageUrl:
        'https://japanese.binus.ac.id/files/2017/02/thumb-1920-744908.jpg',
    description:
        'Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa.) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films and released by Toho. It depicts a high school boy in Tokyo and a high school girl in the Japanese countryside who suddenly and inexplicably begin to swap bodies.',
    information: {'Studio': 'CoMix Wave Films'},
    rank: 8.88,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '8',
    genre: ['Action', 'Supernatural'],
    title: 'Demon Slayer: Kimetsu no Yaiba – The Movie: Mugen Train',
    imageUrl:
        'https://cdn.popculture.id/wp-content/uploads/2020/10/villain3.jpeg',
    description:
        'Demon Slayer: Kimetsu no Yaiba – The Movie: Mugen Train (Japanese: 劇場版「鬼滅の刃」 無限列車編, Hepburn: Gekijō-ban "Kimetsu no Yaiba" Mugen Ressha-hen), also known as Demon Slayer: Mugen Train or Demon Slayer: Infinity Train, is a 2020 Japanese animated dark fantasy action film[3][4] based on the shōnen manga series Demon Slayer: Kimetsu no Yaiba by Koyoharu Gotouge. The film, which is a direct sequel to the first season of the anime series, was directed by Haruo Sotozaki and written by Ufotable staff members. The film was produced by Ufotable in association with Aniplex and Shueisha.',
    information: {'Studio': 'ufotable'},
    rank: 8.56,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '9',
    genre: ['Drama', 'Romance'],
    title: 'Shigatsu wa Kimi no Uso',
    imageUrl:
        'https://i.pinimg.com/originals/e7/67/1a/e7671aac4fc152189c6b76f68527c1b1.jpg',
    description:
        'Your Lie in April (Japanese: 四月は君の嘘, Hepburn: Shigatsu wa Kimi no Uso) is a Japanese romantic drama manga series that was written and illustrated by Naoshi Arakawa, and has been adapted into an anime television series and multiple stage productions. The manga was serialized in Kodansha\'s shōnen manga (manga aimed at teenage boys) magazine Monthly Shōnen Magazine from April 2011 to May 2015. The story follows a young pianist named Kо̄sei Arima, who loses the ability to hear the piano after his mother\'s death and his experiences after he meets violinist Kaori Miyazono.',
    information: {'Studio': 'A-1 Pictures'},
    rank: 8.67,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '9',
    genre: ['Drama', 'Romance', 'Slice Of Life'],
    title: 'Tenki no Ko',
    imageUrl: 'https://images5.alphacoders.com/100/thumb-1920-1003363.jpg',
    description:
        'Weathering with You (Japanese: 天気の子, Hepburn: Tenki no Ko, lit. "Child of Weather") is a 2019 Japanese animated romantic fantasy film produced by CoMix Wave Films and released by Toho. It depicts a high school boy who runs away from his rural home to Tokyo and befriends an orphan girl who has the ability to control the weather.',
    information: {'Studio': 'CoMix Wave Films'},
    rank: 8.33,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '10',
    genre: ['Drama', 'Slice Of Life', 'Supernatural'],
    title: 'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai',
    imageUrl:
        'https://pisco.trinikid.com/0cf511c3-bf8e-4272-aee2-2fc79d96e130.jpg',
    description:
        'Anohana: The Flower We Saw That Day (Japanese: あの日見た花の名前を僕達はまだ知らない。, Hepburn: Ano Hi Mita Hana no Namae o Bokutachi wa Mada Shiranai., "We Still Don\'t Know the Name of the Flower We Saw That Day.") is a 2011 Japanese anime television series created by Super Peace Busters (超平和バスターズ, Chō Heiwa Basutāzu), an artist collective consisting of director Tatsuyuki Nagai, screenwriter Mari Okada, and character designer Masayoshi Tanaka. The anime was produced by A-1 Pictures and aired in Fuji TV\'s noitamina block between April and June 2011. It is currently licensed in North America by Aniplex of America.',
    information: {'Studio': 'A-1 Pictures'},
    rank: 8.35,
    type: Type.Episode,
    finish: false,
  ),
  Anime(
    id: '11',
    genre: ['Drama', 'Action', 'Mystery', 'Fantasy'],
    title: 'Shingeki no Kyojin',
    imageUrl:
        'https://www.teahub.io/photos/full/217-2178024_cool-shingeki-no-kyojin.jpg',
    description:
        'Attack on Titan (Japanese: 進撃の巨人, Hepburn: Shingeki no Kyojin, lit. "The Advancing Giants") is a Japanese manga series written and illustrated by Hajime Isayama. It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans; the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother. Attack on Titan was serialized in Kodansha\'s monthly shōnen manga magazine Bessatsu Shōnen Magazine from September 2009 to April 2021, with its chapters collected in 34 tankōbon volumes.',
    information: {'Studio': 'Wit Studio'},
    rank: 8.52,
    type: Type.Episode,
    finish: false,
  ),
  Anime(
    id: '12',
    genre: ['Drama', 'Mystery'],
    title: 'Death Billiards',
    imageUrl:
        'https://i0.wp.com/reviewapasaja.net/wp-content/uploads/2016/01/3.jpg?fit=1920%2C1080&ssl=1',
    description:
        'Death Billiards (デス・ビリヤード Desu Biriyādo) is a 2013 animated short consisting of only one episode. It was created by Yuzuru Tachikawa, a producer from Madhouse. This short was produced as part of the Young Animator Training Project\'s Anime Mirai 2013 project, which funds young animators. It aired on March 2nd, 2013.',
    information: {'Studio': 'Madhouse'},
    rank: 7.90,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '13',
    genre: ['Drama', 'Supernatural', 'Adventure'],
    title: 'Sen to Chihiro no Kamikakushi',
    imageUrl:
        'https://1.bp.blogspot.com/-VzFgt27XSbs/XxAPahdiKtI/AAAAAAAABCI/7xlbm4gZA6gNtmsMNwl7NFwzdG--KR-swCPcBGAsYHg/s1920/spirited-away.jpg',
    description:
        'Spirited Away (Japanese: 千と千尋の神隠し, Hepburn: Sen to Chihiro no Kamikakushi, \'Sen and Chihiro\'s Spiriting Away\') is a 2001 Japanese animated fantasy film written and directed by Hayao Miyazaki, animated by Studio Ghibli for Tokuma Shoten, Nippon Television Network, Dentsu, Buena Vista Home Entertainment, Tohokushinsha Film, and Mitsubishi.[7] The film features the voices of Rumi Hiiragi, Miyu Irino, Mari Natsuki, Takeshi Naito, Yasuko Sawaguchi, Tsunehiko Kamijō, Takehiko Ono, and Bunta Sugawara. Spirited Away tells the story of Chihiro Ogino (Hiiragi), a ten-year-old girl who, while moving to a new neighborhood, enters the world of Kami (spirits of Japanese Shinto folklore).[8] After her parents are turned into pigs by the witch Yubaba (Natsuki), Chihiro takes a job working in Yubaba\'s bathhouse to find a way to free herself and her parents and return to the human world.',
    information: {'Studio': 'Studio Ghibli'},
    rank: 8.79,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '14',
    genre: ['Adventure', 'Action', 'Romance', 'Fantasy'],
    title: 'Sword Art Online',
    imageUrl: 'https://images2.alphacoders.com/689/thumb-1920-689248.jpg',
    description:
        'Sword Art Online (Japanese: ソードアート・オンライン, Hepburn: Sōdo Āto Onrain) is a Japanese light novel series written by Reki Kawahara and illustrated by abec. The series takes place in the near future and focuses on protagonist Kazuto "Kirito" Kirigaya and Asuna Yuuki as they play through various virtual reality MMORPG worlds. Kawahara originally wrote the series as a web novel on his website from 2002 to 2008. The light novels began publication on ASCII Media Works\' Dengeki Bunko imprint from April 10, 2009, with a spin-off series launching in October 2012. The series has spawned twelve manga adaptations published by ASCII Media Works and Kadokawa. The novels and the manga adaptations have been licensed for release in North America by Yen Press.',
    information: {'Studio': 'A-1 Pictures'},
    rank: 7.20,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '15',
    genre: ['Supernatural', 'Action', 'Fantasy'],
    title: 'Fate/stay night Movie: Heaven\'s Feel - II. Lost Butterfly',
    imageUrl: 'https://www.flixwatch.co/wp-content/uploads/81169358.jpg',
    description:
        'Fate/stay night: Heaven\'s Feel is a Japanese anime film trilogy produced by Ufotable, directed by Tomonori Sudō, written by Akira Hiyama,[2] and featuring music by Yuki Kajiura.[3] The trilogy adapts Heaven\'s Feel, the third and final route of the Fate/stay night visual novel. It focuses on Shirou Emiya and Sakura Matou who are affected by a conflict between mages known as the Holy Grail War.',
    information: {'Studio': 'ufotable'},
    rank: 8.54,
    type: Type.Movie,
    finish: true,
  ),
  Anime(
    id: '16',
    genre: ['Comedy', 'Action', 'Sci-Fi', 'Supernatural'],
    title: 'One Punch Man',
    imageUrl:
        'https://www.gwigwi.com/wp-content/uploads/2017/03/gwigwi_zlppdck.jpg',
    description:
        'Fate/stay night: Heaven\'s Feel is a Japanese anime film trilogy produced by Ufotable, directed by Tomonori Sudō, written by Akira Hiyama,[2] and featuring music by Yuki Kajiura.[3] The trilogy adapts Heaven\'s Feel, the third and final route of the Fate/stay night visual novel. It focuses on Shirou Emiya and Sakura Matou who are affected by a conflict between mages known as the Holy Grail War.',
    information: {'Studio': 'Madhouse'},
    rank: 8.52,
    type: Type.Episode,
    finish: true,
  ),
  Anime(
    id: '17',
    genre: ['Drama', 'Sci-Fi'],
    title: 'Stein; Gate',
    imageUrl: 'https://images2.alphacoders.com/224/thumb-1920-224760.jpg',
    description:
        'Steins;Gate is a 2011 anime television series created by the animation studio White Fox based on 5pb. and Nitroplus\'s 2009 visual novel of the same name, and is part of the Science Adventure franchise along with Chaos;Head and Robotics;Notes. It is set in 2010 and follows Rintaro Okabe, who together with his friends accidentally discovers a method of time travel through which they can send text messages to the past, thereby changing the present.',
    information: {'Studio': 'White Fox'},
    rank: 9.09,
    type: Type.Episode,
    finish: false,
  ),
  Anime(
    id: '18',
    genre: ['Comedy', 'Sci-Fi'],
    title: 'Stand By Me Doraemon',
    imageUrl: 'https://wallpaperaccess.com/full/3698805.jpg',
    description:
        'Stand by Me Doraemon (Japanese: STAND BY ME ドラえもん, Hepburn: Sutando Bai Mī Doraemon) is a 2014 Japanese 3D computer-animated science fiction comedy drama film based on the Doraemon manga series and directed by Ryūichi Yagi and Takashi Yamazaki.[2] It was released on 8 August 2014.[3][4] It is the highest-grossing film of the Doraemon franchise. Bang Zoom! Entertainment premiered an English-dubbed version of the film at the Tokyo International Film Festival on 24 October 2014.[5] The English version features the cast of the Disney XD show Doraemon: Gadget Cat From the Future.[citation needed] A different English version with local actors was distributed by Multivision Pictures Entertainment and VIVA International Pictures for a Filipino audience in 2015. It is therefore the first of 2 Doraemon films to be dubbed into English.',
    information: {'Studio': 'Shirogumi, Shin-Ei Animation'},
    rank: 8.08,
    type: Type.Movie,
    finish: true,
  ),
];
