import 'package:ceo_detail/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MNC_CEOs(),
        'second_page': (context) => secondpage(),
      },
    ),
  );
}

class MNC_CEOs extends StatefulWidget {
  const MNC_CEOs({Key? key}) : super(key: key);

  @override
  State<MNC_CEOs> createState() => _MNC_CEOsState();
}

class _MNC_CEOsState extends State<MNC_CEOs> {
  // TextEditingController? second;

  List<Map> data = [
    {
      'CeoName': "Guenter Butschek",
      'CeoPhotos': "images/tata ceo.png",
      'CompanyLogo': "images/tata logo.png",
      'CompanyName': "TATA Motors",
      'Companypro': "images/tata motor.jpeg",
      'CompanyDescription':
          "Tata Motors Group (Tata Motors) is a 37 billion organisation. It is a leading global automobile manufacturing company. Its diverse portfolio includes an extensive range of cars, sports utility vehicles, trucks, buses and defence vehicles. Tata Motors is one of India's largest OEMs offering an extensive range of integrated, smart and e-mobility solutions",
    },
    {
      'CeoName': "Sundar pichai",
      'CeoPhotos': "images/google ceo.jpg",
      'CompanyLogo': "images/google logo.jpg",
      'CompanyName': "Google",
      'Companypro': "images/google pro.jpeg",
      'CompanyDescription':
          "Google LLC (Google), a subsidiary of Alphabet Inc, is a provider of search and advertising services on the internet. The company focuses on business areas such as advertising, search, platforms and operating systems, and enterprise and hardware products. Its portfolio of products and services include Google Search, Google Chrome, Google Docs, Google Calendar, Google Photos, Google Meet, Google Drive, Google Finance, Google Play Books, Google News, Google Earth, Google Ad Manager, Google Play, AdMob, Google Maps, AdSense, Gmail, Google Groups, and YouTube among others.",
    },
    {
      'CeoName': "Enrique Lores",
      'CeoPhotos': "images/hp ceo.jpeg",
      'CompanyLogo': "images/hp logo.png",
      'CompanyName': "HP",
      'Companypro': "images/hp leptop.jpeg",
      'CompanyDescription':
          "Tesla was founded in 2003 by a group of engineers who wanted to prove that people didn’t need to compromise to drive electric – that electric vehicles can be better, quicker and more fun to drive than gasoline cars. Today, Tesla builds not only all-electric vehicles but also infinitely scalable clean energy generation and storage products. Tesla believes the faster the world stops relying on fossil fuels and moves towards a zero-emission future, the better.",
    },
    {
      'CeoName': "Tim Cook ",
      'CeoPhotos': "images/apple ceo.jpeg",
      'CompanyLogo': "images/apple logo.png",
      'CompanyName': "Apple",
      'Companypro': "images/apple pro.jpg",
      'CompanyDescription':
          "Apple Inc. (Apple) designs, manufactures and markets smartphones, personal computers, tablets, wearables and accessories and sells a range of related services. The Company's products include iPhone, Mac, iPad, AirPods, Apple TV, Apple Watch, Beats products, HomePod, iPod touch and accessories.",
    },
    {
      'CeoName': "Osamu Suzuki",
      'CeoPhotos': "images/suzuki ceo.jpeg",
      'CompanyLogo': "images/suzuki logo.png",
      'CompanyName': "Suzuki",
      'Companypro': "images/suzuki pro.jpg",
      'CompanyDescription':
          "Suzuki Motor Corporation (Hepburn: Suzuki Kabushiki-Gaisha)[4] is a Japanese multinational corporation headquartered in Minami-ku, Hamamatsu, Japan.[5] Suzuki manufactures automobiles, motorcycles, all-terrain vehicles (ATVs), outboard marine engines, wheelchairs and a variety of other small internal combustion engines. In 2016, Suzuki was the eleventh biggest automaker by production worldwide.[6] Suzuki has over 45,000 employees and has 35 production facilities in 23 countries, and 133 distributors in 192 countries. The worldwide sales volume of automobiles is the world's tenth largest,[7] while domestic sales volume is the third largest in the country.[8]",
    },
    {
      'CeoName': "Ola Källenius",
      'CeoPhotos': "images/mercedes ceo.jpg",
      'CompanyLogo': "images/mercedes logo.png",
      'CompanyName': "Mercedes",
      'Companypro': "images/Mercedes pro.jpg",
      'CompanyDescription':
          "The brand's origins lie in Daimler-Motoren-Gesellschaft's 1901 Mercedes and Karl Benz's 1886 Benz Patent-Motorwagen, which is widely regarded as the first internal combustion engine in a self-propelled automobile. The slogan for the brand is Mercedes-Benz AG produces consumer luxury vehicles and commercial vehicles badged as Mercedes-Benz. From November 2019 onwards, Mercedes-Benz-badged heavy commercial vehicles (trucks and buses) are managed by Daimler Truck, a former part of the Mercedes-Benz Group turned into an independent company in late 2021. In 2018, Mercedes-Benz was the largest brand of premium vehicles in the world, having sold 2.31 million passenger cars.[8]",
    },
    {
      'CeoName': "Toshihiro Mibe",
      'CeoPhotos': "images/honda ceo.jpeg",
      'CompanyLogo': "images/honda logo.jpeg",
      'CompanyName': "Honda",
      'Companypro': "images/honda pro.jpg",
      'CompanyDescription':
          "Honda has been the world's largest motorcycle manufacturer since 1959,as well as the world's largest manufacturer of internal combustion engines measured by volume, producing more than 14 million internal combustion engines each year. Honda became the second-largest Japanese automobile manufacturer in 2001.",
    },
    {
      'CeoName': "Oliver Zipse",
      'CeoPhotos': "images/bmw ceo.jpeg",
      'CompanyLogo': "images/bmw logo.png",
      'CompanyName': "bmw",
      'Companypro': "images/bmw pro.jpg",
      'CompanyDescription':
          "Long-term thinking and responsible action are the basis of economic success. Ecological and social sustainability, comprehensive product responsibility and a clear commitment to conserving resources are therefore an integral part of our strategy.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MNC CEOs",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: data
              .map(
                (e) => Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context)
                                .pushNamed('second_page', arguments: e);
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 400,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context)
                                    .pushNamed('second_page', arguments: e);
                              });
                            },
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image(
                                    image: AssetImage("${e['CompanyLogo']}"),
                                    height: h * 0.1,
                                    width: w * 0.2,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "${e['CompanyName']}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      "${e['CeoName']}",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage:
                                      AssetImage("${e['CeoPhotos']}"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
