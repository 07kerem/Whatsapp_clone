import 'package:flutter/material.dart';

import '../kısayol/popup_kısayol.dart';
import '../widgets/calls_page.dart';
import '../widgets/chats_widgets.dart';
import '../widgets/status_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // DefaultTabController sınıfı, sekme tabanlı bir kullanıcı arayüzünü düzenlemek
    //ve sekmeler arasında geçiş yapmayı yönetmek için kullanılan bir widgettir.
    return DefaultTabController(
        //initialIndex özelliği kullanıcı arayüzünde başlangıçta hangi
        //sekmeye odaklanılacağını belirlemek için kullanışlıdır.
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 15),
                    child: Icon(
                      Icons.search,
                      size: 28,
                    ),
                  ),
                  popupMenuBtn(),
                ],
              )),
          body: Column(
            children: [
              Container(
                color: const Color(0xFF075E55),
                // sekme çubuğu
                child: TabBar(
                    // tabbarın sekmelerinin sığmadığı yerde yana doğru
                    // kaydırılabilir olmasını sağlar
                    isScrollable: true,
                    // bu color sekmenin alt çizgi gösterge rengini belirler
                    indicatorColor: Colors.white,
                    // verdiğimiz göstergenin kalınlığını belirler
                    indicatorWeight: 4,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    // seklmeler
                    tabs: [
                      const SizedBox(
                        width: 25,
                        // sekme
                        // tab 1
                        child: Tab(
                          icon: Icon(Icons.camera_alt),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        // tab 2
                        child: Tab(
                            child: Row(
                          children: [
                            const Text('CHATS'),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(1),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                '10',
                                style: TextStyle(
                                    color: Color(0xFF075E55), fontSize: 14),
                              ),
                            )
                          ],
                        )),
                      ),
                      // tab 3
                      const SizedBox(
                        width: 85,
                        child: Tab(child: Text('STATUS')),
                      ),
                      const SizedBox(
                        width: 85,
                        child: Tab(child: Text('CALLS')),
                      )
                    ]),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    // tab 1
                    Container(
                      color: Colors.black,
                    ),
                    // tab 2

                    const chatsWidgets(),

                    // tab 3
                    const statusWidget(),
                    // tab 4
                    const callsWidget(),
                  ]))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF075E55),
            child: Icon(Icons.message),
          ),
        ));
  }
}
