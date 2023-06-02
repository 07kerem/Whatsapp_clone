import 'package:flutter/material.dart';

class chatsWidgets extends StatelessWidget {
  const chatsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    //  içeriğini aşırı taşıma durumunda kaydırma özelliği sağlar.
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            // bu işlemde aşağıda yer alan bir kod parçasını
            // 11 kere tekrarladık böylece kabaca 11 tane cart oldu
            // not: children içine yaptık böylece direk children fora girdi
            for (int i = 1; i < 11; i++)
              // kullanıcının bir widgete dokunduğunda gerçekleşen
              //geribildirim ve etkileşim işlemlerini kolaylaştırır.
              InkWell(
                onTap: () {
                  // navigator ile yön verip chatsIn sayfasının içine
                  // gir diyoruz sohbetlerin herhangi birine bastığımızda
                  Navigator.pushNamed(context, 'chatsIn');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      // ClipRRect, genellikle dikdörtgenin köşelerini yuvarlatmak
                      //veya özel bir şekil vermek gibi durumlarda kullanılır.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/wp_profil.jpg',
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          // elementleri başından başlatır
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Programmer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Hi Programmer how are you',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '2:04',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF0FCE5E),
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                                color: const Color(0xFF0FCE5E),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
