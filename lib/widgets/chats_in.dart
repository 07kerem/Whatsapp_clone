import 'package:flutter/material.dart';
import 'package:wp_clone/widgets/chat_sample.dart';

import 'chat_bottomsheet.dart';

class chatsIn extends StatelessWidget {
  const chatsIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            //  bir dokunma etkileşimi sağlayan bir widgettir.
            // inkwell on tap alır
            child: InkWell(
              onTap: () {
                // Navigator.pop() çağrısı, mevcut sayfayı
                //kapatır ve önceki sayfaya geri dönülmesini sağlar
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/wp_profil.jpg',
                    width: 45,
                    height: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Programmer',
                        style: TextStyle(fontSize: 19),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(.9)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                Icons.videocam,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                Icons.call,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        // bir widgetin genişliğini ekrana göre
        //tamamen genişletmek için kullanılır.
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wp_bg.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [BoxShadow(color: Colors.grey)]),
                  width: 300,
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'Messages and calls are end-to-en encrypted, no one outside of this chat can read or listen. Tap to learn more',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  )),
              const chatSample(),
              const chatSample(),
              const chatSample(),
              const chatSample(),
              const chatSample(),
              const chatSample(),
            ]),
          ),
        ),
      ),
      bottomSheet: const chatBottomBar(),
    );
  }
}
