import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:hotel_booking_app/utils/app_colors.dart';
import 'package:hotel_booking_app/widget/most_relevant_facilities.dart';
import 'package:hotel_booking_app/widget/search_bar.dart';
>>>>>>> Stashed changes

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      body: Center(child: Text("This is discover Screen"),),
    );
  }
}
=======
      backgroundColor: AppColors.backgroundColor,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 100,
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
                                              FacilityItem(
                                                  facilityName: "4 guest"),
                                              FacilityItem(
                                                facilityName: '2 Bedrooms',
                                              ),
                                              FacilityItem(
                                                facilityName: '2 Bathrooms',
                                              ),
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
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Text("Discover new places",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 500,
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:const [
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                  DiscoverNewPlaces(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DiscoverNewPlaces extends StatelessWidget {
  const DiscoverNewPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 250,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    "https://images.pexels.com/photos/8241741/pexels-photo-8241741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(135, 0, 0, 0),
                        borderRadius: BorderRadius.circular(35)),
                    child: const Icon(
                      Icons.travel_explore_sharp,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sigiriya kabana"),
                      Row(
                        children: [
                          Icon(Icons.star_border_rounded),
                          Text("4.39")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.attach_money_rounded,size: 17,),
                      Text("110")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

>>>>>>> Stashed changes
