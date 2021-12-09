import 'package:daryo/models/news.dart';
import 'package:daryo/pages/homePage/list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Daryo',
            style: TextStyle(fontSize: 20),
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
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('a'),
              ),
              ListTile(
                title: Text('Item1'),
              ),
              ListTile(
                title: Text('Item2'),
              ),
            ],
          ),
        ),
        body: Column(
          children:  [
             const Card(
              margin: EdgeInsets.only(left: 0,right: 0,top: 0),
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(top: 13.0,bottom: 13,left: 2,right: 2),
                    child: Text(
                      "So'ngi yangiliklar",
                      style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.0,bottom: 13,left: 2,right: 2),
                    child: Text(
                      "Asosiy yangiliklar",
                      style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.0,bottom: 13,left: 2,right: 2),
                    child: Text(
                      "Eng ko'p o'qilganlar",
                      style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child:  TabBarView(children:<Widget> [
                ListView.builder(
                    itemCount: News.news.length,
                    itemBuilder: (BuildContext context,int index){
                      return NewsWidget(context,News.news[index]);
                    }

                ),
                Center(
                  child: Text('Asosiy Yangiliklar',style: TextStyle(fontSize: 20),),
                ),
                Center(
                  child: Text("Eng ko'p o'qilganlar",style: TextStyle(fontSize: 20),),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
