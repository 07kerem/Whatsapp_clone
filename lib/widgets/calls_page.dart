import 'package:flutter/material.dart';

class callsWidget extends StatelessWidget {
  const callsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(children: [
              for (int i = 1; i < 4; i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/wp_profil.jpg',
                          height: 60,
                          width: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('kerem',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.call_made,
                                  color: Color(0xFF075E55),
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('(1) today, 1:36',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54))
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        child: const Icon(
                          Icons.call_sharp,
                          color: Color(0xFF075E55),
                        ),
                      )
                    ],
                  ),
                ),
              for (int i = 1; i < 4; i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/wp_profil.jpg',
                          height: 60,
                          width: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('kerem',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.call_made,
                                  color: Color(0xFF075E55),
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('(1) today, 1:36',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54))
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        child: const Icon(
                          Icons.videocam,
                          color: Color(0xFF075E55),
                          size: 27,
                        ),
                      )
                    ],
                  ),
                ),
            ])));
  }
}
