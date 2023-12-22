// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostCard({super.key});

  Image img0 = Image.asset('assets/images/seoul.webp');
  Image img1 = Image.asset('assets/images/chuncheon.webp');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        32,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                        image: DecorationImage(
                          image: img0.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Seoul, S. Korea',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  '19 km',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'June 1st - 16th',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      r'$ 97.67',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' / 1 day',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
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
