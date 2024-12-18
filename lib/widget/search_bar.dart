import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/app_colors.dart';

class SearchBars extends StatefulWidget {
  const SearchBars({
    super.key,
  });

  @override
  State<SearchBars> createState() => _SearchBarsState();
}

class _SearchBarsState extends State<SearchBars> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 34,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                isPressed
                    ? SizedBox(
                        width: 300,
                        height: 42,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 14),
                          child: TextField(
                            style: TextStyle(
                                color: AppColors.primaryColor, fontSize: 18),
                          ),
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Search places",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              Text("Date range ",
                                  style: TextStyle(
                                      color: AppColors.searchBoxMinTextColor,
                                      fontSize: 13)),
                              Container(
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: AppColors.searchBoxMinTextColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Text(
                                " Number of guest",
                                style: TextStyle(
                                    color: AppColors.searchBoxMinTextColor,
                                    fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
