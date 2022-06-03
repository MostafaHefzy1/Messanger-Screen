import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        backgroundColor:Colors.white,
        titleSpacing: 20.0,
        elevation:0.0,
        title:Row(
          children: [
            CircleAvatar(
              radius:20.0,
              backgroundImage:NetworkImage(
                'https://tse2.mm.bing.net/th?id=OIP.hQ91zlcqd4Inyi2AWByRMAHaE8&pid=Api&P=0&w=314&h=209' ,

              ),
            ),
            SizedBox(
              width:10,
            ),
            Text(
              'Chats' ,
              style:TextStyle(
                color:Colors.black ,
              ),


            ) ,
          ],
        ),
        actions: [
          CircleAvatar(
            child: IconButton(onPressed:(){}
                , icon:Icon(
                  Icons.camera_alt ,
                )
            ),
          ) ,
          SizedBox(
            width:10,
          ),
          CircleAvatar(
            child: IconButton(onPressed:(){}
                , icon:Icon(
                  Icons.edit ,
                )
            ),
          ) ,

        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:
            [
              Container(
                decoration:BoxDecoration(
                  color:Colors.grey[200],
                  borderRadius: BorderRadius.circular(5.0)  ,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search ,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search' ,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                height:100.0,
                child: ListView.separated(
                  scrollDirection:Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder:(context, index) => Containerbulidfunction() ,
                  separatorBuilder: (context, index) => SizedBox(
                    width:10,
                  ) ,
                  itemCount:20,
                ),
              ) ,
              ListView.separated(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (context , index) =>  Rowbulidfunction() ,
                separatorBuilder: (context , index) => SizedBox(
                  height: 20,
                ),
                itemCount: 20 ,
              ),
            ],

          ),
        ),
      ),
    ) ;
  }


  Widget Rowbulidfunction() => Row(
    children: [
      Stack(
        alignment:AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius:25.0,
            backgroundImage:NetworkImage(
              'https://tse2.mm.bing.net/th?id=OIP.hQ91zlcqd4Inyi2AWByRMAHaE8&pid=Api&P=0&w=314&h=209' ,
            ),
          ),
          CircleAvatar(
            backgroundColor:Colors.green,
            radius:8.0,
          ),
        ],
      ),
      SizedBox(
        width:15.0,
      ),
      Container(
        alignment:AlignmentDirectional.topCenter,
        child: Expanded(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text(
                'Lionel Messi' ,
                style:TextStyle(
                  fontWeight:FontWeight.bold ,
                ),
                maxLines:1,
                overflow:TextOverflow.ellipsis,

              ),
              SizedBox(
                height:5.0,
              ),
              Row(
                children: [
                  Text(
                    'Hello Lionel messi how are you '    ,
                    maxLines:2,
                    overflow:TextOverflow.ellipsis,
                  ),
                  Text(
                    '.6:49AM' ,
                    maxLines:1,
                    overflow:TextOverflow.ellipsis,

                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    ],
  ) ;

  Widget Containerbulidfunction() => Container(
    width:50.0,
    child: Column(
      children: [
        Stack(
          alignment:AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius:25.0,
              backgroundImage:NetworkImage(
                'https://tse2.mm.bing.net/th?id=OIP.hQ91zlcqd4Inyi2AWByRMAHaE8&pid=Api&P=0&w=314&h=209' ,
              ),
            ),
            CircleAvatar(
              backgroundColor:Colors.green,
              radius:8.0,
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Lionel Messi' ,
          maxLines:2,
          overflow:TextOverflow.ellipsis,
        ),
      ],
    ),
  ) ;

}
