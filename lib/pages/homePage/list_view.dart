import 'package:daryo/models/news.dart';
import 'package:flutter/material.dart';

Widget NewsWidget(BuildContext context,News news) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news.type,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 13),),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Text('${news.time} | ${news.data} | ',style: TextStyle(color: Colors.grey[600],fontSize: 12,fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Icon(Icons.visibility_outlined,color: Colors.blue,size: 23,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 5),
                  child: Text(news.vis,style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ),
        ],
      ),
      Row(
        children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Image(
              width: 80,
              height: 85,
              fit: BoxFit.cover,
              image: AssetImage(news.img),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            padding: EdgeInsets.only(left: 5,right: 5,top: 0),
            width: double.infinity,
            child: Text(
              news.label,
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ),
        ),

        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 5,left: 8,right: 8),
        child: Divider(

          color: Colors.grey[600],
        ),
      ),
    ],
  );
}
