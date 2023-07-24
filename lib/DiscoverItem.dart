import 'package:flutter/material.dart';

class DiscoverItem extends StatelessWidget {
  final String firststring;
  final String secondstring;
  final String thirdstring;
  final String fourhstring;
  final String firstimage;
  final String secondimage;
  const DiscoverItem({
    required this.firststring,
    required this.secondstring,
    required this.thirdstring,
    required this.fourhstring,
    required this.firstimage,
    required this.secondimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                firstimage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firststring,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  secondstring,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
                ),
                Text(
                  thirdstring,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(firstimage, fit: BoxFit.cover,width: 20,height: 20,),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Text(
                      fourhstring,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
