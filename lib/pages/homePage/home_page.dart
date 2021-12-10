import 'package:daryo/models/news.dart';
import 'package:daryo/pages/homePage/list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool>? isSelected;
  Color _color = Colors.white;
  Color _color2 = Colors.blue;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Daryo',
            style: TextStyle(fontSize: 22),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              'Daryo',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: 100,
                            height: 30,
                            child: ToggleButtons(
                              color: Colors.blue,
                              borderColor: Colors.white,
                              fillColor: Colors.white,
                              borderWidth: 2,
                              selectedBorderColor: Colors.white,
                              selectedColor: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Text(
                                    'LOTINCHA',
                                    style:
                                        TextStyle(fontSize: 14, color: _color),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(4.0),
                                  child: Text(
                                    'КИРИЛЛЧА',
                                    style:
                                        TextStyle(fontSize: 14, color: _color2),
                                  ),
                                ),
                              ],
                              onPressed: (int index) {
                                setState(() {
                                  for (int i = 0; i < isSelected!.length; i++) {
                                    isSelected![i] = i == index;
                                    isSelected![i]
                                        ? _color = Colors.white
                                        : _color = Colors.blue;
                                    isSelected![i]
                                        ? _color2 = Colors.blue
                                        : _color2 = Colors.white;
                                  }
                                });
                              },
                              isSelected: isSelected!,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Tashkent',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '+14.0°',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, bottom: 2),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                           children: [
                             Icon(Icons.monetization_on_outlined,size: 27,color: Colors.white,),
                             Text(
                               '10795.73',
                               style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.white,
                                   fontWeight: FontWeight.w400),
                             ),
                           ],
                         ),

                        Row(
                           children: [
                             Icon(Icons.euro_outlined,size: 27,color: Colors.white,),
                             Text(
                               '12219.69',
                               style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.white,
                                   fontWeight: FontWeight.w400),
                             ),
                           ],
                         ),
                        Row(
                           children: [
                             Icon(Icons.monetization_on_outlined,size: 27,color: Colors.white,),
                             Text(
                               '146.49',
                               style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.white,
                                   fontWeight: FontWeight.w400),
                             ),
                           ],
                         ),


                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Qo'llanma ekranini ko'rsatish"),
                tileColor: Colors.yellow[200],
              ),
              ListTile(
                title: Text("So'ngi yangiliklar"),
              ),
              ListTile(
                title: Text('Mahalliy'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Dunyo'),
              ),
              Divider(
                color: Colors.grey
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Tanlangan xabarlar',style:TextStyle(color: Colors.green)),
              ),
              Divider(
                  color: Colors.grey
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Texnologiyalar'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Madaniyat'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Avto'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Sport'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Foto'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Lifestyle'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Kolumnistlar'),
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Afisha'),
                tileColor: Colors.grey[300],
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Valyutalr kursi'),
                tileColor: Colors.grey[300],
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Ob-havo'),
                tileColor: Colors.grey[300],
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Foydalanish shartlari'),
                tileColor: Colors.grey[300],
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text("Daryo haqida"),
                tileColor: Colors.grey[300],
              ),
              ListTile(
                minVerticalPadding: 2,
                title: Text('Sozlashlar'),
                tileColor: Colors.grey[300],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: const Card(
                margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 13.0, bottom: 13, left: 2, right: 2),
                      child: Text(
                        "So'ngi yangiliklar",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 13.0, bottom: 13, left: 2, right: 2),
                      child: Text(
                        "Asosiy yangiliklar",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 13.0, bottom: 13, left: 2, right: 2),
                      child: Text(
                        "Eng ko'p o'qilganlar",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: <Widget>[
                ListView.builder(
                    itemCount: News.news.length,
                    itemBuilder: (BuildContext context, int index) {
                      return NewsWidget(context, News.news[index]);
                    }),
                Center(
                  child: Text(
                    'Asosiy Yangiliklar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Center(
                  child: Text(
                    "Eng ko'p o'qilganlar",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
