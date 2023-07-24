import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task1_flutter/ChipCustom.dart';
import 'package:task1_flutter/DiscoverItem.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  final titlesList = ["All", "Politic", "Sports", "Education", "Games"];

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
            child: BackButton(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 12),
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 3),
                child: Text(
                  "news from all around the world",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
              Container(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.search_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text("serach"),
                        Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://previews.123rf.com/images/regara/regara2207/regara220700030/189578958-line-icon-slider-filter-isolated-on-white-background.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        titlesList.length,
                        (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: ChipCustom(title: titlesList[index]))),
                  ),
                ),
              ),
              DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),DiscoverItem(
                firststring: "Sports",
                secondstring: "What Training Do Volleyball",
                thirdstring: "Players Need?",
                fourhstring: "Mckindney . Feb27,2023",
                firstimage:
                    "https://upload.wikimedia.org/wikipedia/commons/7/74/Posts_on_the_saltmarsh%2C_Warton_Sands_-_geograph.org.uk_-_1658558.jpg",
                secondimage:
                    "https://play.google.com/store/apps/details?id=gov.va.mobilehealth.ncptsd.pecoach&hl=en_US",
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
