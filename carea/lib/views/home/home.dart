import 'package:cached_network_image/cached_network_image.dart';
import 'package:carea/models/brand.model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../components/buttons/logo_brand.component.dart';
import '../../constants/colors.constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String defaultAvatar =
      "https://images.unsplash.com/photo-1684510032997-6df5513d162f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80https://images.unsplash.com/photo-1684510032997-6df5513d162f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80";

  List imageList = [
    {
      "id": 1,
      "discount": 20,
      "label": "Week Deals!",
      "descriptions": "Get a new car discount, only valid this week",
      "image_path": 'assets/images/cars/BMW-m4.png'
    },
    {
      "id": 2,
      "discount": 24,
      "label": "Week Deals!",
      "descriptions": "Get a new car discount, only valid this week",
      "image_path": 'assets/images/cars/BMW-m4.png'
    },
    {
      "id": 3,
      "discount": 25,
      "label": "Week Deals!",
      "descriptions": "Get a new car discount, only valid this week",
      "image_path": 'assets/images/cars/BMW-m4.png'
    }
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List<Brand> listBrand = [];

  void setListBrand() {
    Brand mercedes = Brand();
    mercedes.name = "Mercedes";
    mercedes.image = "assets/images/brands/mercedes.png";
    Brand tesla = Brand();
    tesla.name = "Tesla";
    tesla.image = "assets/images/brands/tesla.png";
    Brand bmv = Brand();
    bmv.name = "BMW";
    bmv.image = "assets/images/brands/bmw.png";
    Brand toyota = Brand();
    toyota.name = "Toyota";
    toyota.image = "assets/images/brands/toyota.png";
    Brand volvo = Brand();
    volvo.name = "Volvo";
    volvo.image = "assets/images/brands/volvo.png";
    Brand bugatti = Brand();
    bugatti.name = "Bugatti";
    bugatti.image = "assets/images/brands/bugatti.png";
    Brand honda = Brand();
    honda.name = "Honda";
    honda.image = "assets/images/brands/honda.png";

    setState(() {
      listBrand.add(mercedes);
      listBrand.add(tesla);
      listBrand.add(bmv);
      listBrand.add(toyota);
      listBrand.add(volvo);
      listBrand.add(bugatti);
      listBrand.add(honda);
    });
  }

  List<Widget> renderListButtonBrand() {
    List<Widget> datas = [];
    for (var i = 0; i < listBrand.length; i++) {
      var item = listBrand[i];
      datas.add(ButtonLogoBrand(
        brandName: item.name!,
        imageURL: item.image!,
      ));
    }
    datas.add(const ButtonLogoBrand(
      brandName: "More",
      imageURL: "assets/images/orther.png",
    ));
    return datas;
  }

  List<Widget> renderListCar() {
    List<Widget> datas = [];
    for (var i = 0; i < 6; i++) {
      datas.add(InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 170,
                  height: 140,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF3F3F3),
                  ),
                  child: Image.asset(
                    "assets/images/cars/BMW-m4.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      EvaIcons.heart_outline,
                      size: 28,
                      color: Color(COLOR.dark),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 3),
              child: Text(
                "BMW M4 Series",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(COLOR.dark)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: SizedBox(
                width: 170,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.star_half_rounded,
                      size: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "4.5",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF616161)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "|",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF616161)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFFF3F3F3)),
                      child: Text(
                        "New",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(COLOR.dark)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                "\$155,000",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(COLOR.dark)),
              ),
            )
          ],
        ),
      ));
    }
    return datas;
  }

  void changeItemNav(String label) {
    renderListNav(label);
  }

  List<Widget> renderListNav(String data) {
    List<Widget> listNavItem = [];
    listNavItem.add(ButtonSM(
      label: "All",
      isActive: data != "" ? false : true,
      function: changeItemNav,
    ));
    for (var i = 0; i < listBrand.length; i++) {
      var item = listBrand[i];
      listNavItem.add(ButtonSM(
        label: item.name!,
        isActive: item.name == data ? true : false,
        function: changeItemNav,
      ));
    }
    setState(() {
      listNavItem = listNavItem;
    });
    return listNavItem;
  }

  Future initScreen() async {
    setListBrand();
  }

  @override
  void initState() {
    super.initState();
    initScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: Container(
                      width: 48,
                      height: 48,
                      color: Color(COLOR.light),
                      child: CachedNetworkImage(
                        imageUrl: defaultAvatar,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Good Morning 👋",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF757575)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Andrew Ainsley",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(COLOR.dark)),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      EvaIcons.bell_outline,
                      size: 24,
                      color: Color(COLOR.dark),
                    ),
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      EvaIcons.heart_outline,
                      size: 24,
                      color: Color(COLOR.dark),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Special Offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(COLOR.dark),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(COLOR.dark),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF3F3F3)),
                  child: CarouselSlider(
                    items: imageList
                        .map((item) => InkWell(
                                child: BannerItem(
                              discount: item["discount"],
                              label: item["label"],
                              descriptions: item["descriptions"],
                              images: item["image_path"],
                            )))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 1,
                      viewportFraction: 1,
                      autoPlayInterval: const Duration(seconds: 10),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFE1E1E1)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ]),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      runSpacing: 20,
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.spaceAround,
                      children: renderListButtonBrand()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top Deals",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(COLOR.dark),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(COLOR.dark),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: renderListNav("")),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                      direction: Axis.horizontal,
                      spacing: 16,
                      runSpacing: 26,
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.spaceAround,
                      children: renderListCar()),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class BannerItem extends StatelessWidget {
  final int? discount;
  final String? label;
  final String? descriptions;
  final String? images;
  const BannerItem({
    super.key,
    this.discount,
    this.label,
    this.descriptions,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${discount}%",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: Color(COLOR.dark),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "${label}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(COLOR.dark),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "${descriptions}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(COLOR.dark),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          width: 230,
          height: 150,
          child: Image.asset(
            images!,
            fit: BoxFit.cover,
          ),
        ))
      ],
    );
  }
}

class ButtonSM extends StatelessWidget {
  final bool? isActive;
  final String? label;
  final Function? function;
  const ButtonSM({super.key, this.isActive, this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: ElevatedButton(
          onPressed: () {
            function!(label);
          },
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              backgroundColor:
                  isActive == true ? Color(COLOR.dark) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(width: 2, color: Color(COLOR.dark)),
              elevation: 0),
          child: Text(
            "${label}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive == true ? FontWeight.w700 : FontWeight.w600,
              color: isActive == true ? Colors.white : Color(COLOR.dark),
            ),
          )),
    );
  }
}
