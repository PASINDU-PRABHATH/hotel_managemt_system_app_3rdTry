import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_colors.dart';
import 'package:hotel_booking_app/widget/search_bar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 330,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                        image: const NetworkImage(
                          "https://as2.ftcdn.net/v2/jpg/06/82/87/99/1000_F_682879933_7IqAnyLqbeQzFIEitaQuR3qrohz1VXWW.jpg",
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.primaryColor,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Colombo",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Icon(
                            Icons.person_outline_rounded,
                            size: 27,
                            color: AppColors.primaryColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Hey, Martin! Tell us where you want to go..",
                        style: TextStyle(
                            fontSize: 26,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SearchBars()
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Text(
                    "The most relevant",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                  ),
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 370,
                              height: 335,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/19/a1/04/pool.jpg?w=1100&h=-1&s=1",
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: 230,
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        right: 20,
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  90, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                            size: 26,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 18, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Jetwing Blue Colombo",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star_rate_rounded),
                                                Text("4.96(217)",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 4),
                                          child: Row(
                                            children: [
                                              FacilityItem(facilityName:  "4 guest"),
                                              FacilityItem(facilityName: '2 Bedrooms',),
                                              FacilityItem(facilityName: '2 Bathrooms',),
                                              
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 4),
                                          child: Text(
                                            "\$150",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FacilityItem extends StatelessWidget {
  const FacilityItem({
    super.key,
    required this.facilityName
  });

  final String facilityName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          facilityName,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
}
