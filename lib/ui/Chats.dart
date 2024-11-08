import "package:flutter/material.dart";
import "package:whatsapp_ui/ui/calls_page.dart";
import "package:whatsapp_ui/ui/communities_page.dart";
import "package:whatsapp_ui/ui/convarsetion.dart";
import "package:whatsapp_ui/ui/updates_page.dart";
class Chats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> mData = [
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      },
      {
        "name":"Abhishek Shedge",
        "message":"good night..",
        "time":"11:34 pm",
        "messageCount":12,
      }
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("WhatsApp" , style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                  ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.qr_code_scanner),
                      Icon(Icons.camera_alt_outlined),
                      Icon(Icons.more_vert_outlined)
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(21)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.circle_outlined),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Ask Meta AI or Search", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      //border: Border.symmetric(horizontal: BorderSide(width: 1))
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/013/042/571/non_2x/default-avatar-profile-icon-social-media-user-photo-in-flat-style-vector.jpg"),
                          radius: 27,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(mData[index]["name"].toString(), style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                            SizedBox(
                              height: 4,
                            ),
                            Text(mData[index]["message"].toString())

                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end ,
                          children: [
                            Text(mData[index]["time"].toString(), style: TextStyle(fontSize: 12 , color: Colors.green, fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Center(child: Text(mData[index]["messageCount"].toString(), style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold ,color: Colors.white ,),)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                              ),
                              width: 25,
                              height: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Convarsetion();
                    },));
                  },
                );
              },
                itemCount: mData.length,
              ),
            ),

            // bottum navigation icons
            Container(
              height: 75,
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.3, color: Colors.black))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //chats icon
                  Column(
                    children: [
                      Container(
                        child: Icon(Icons.chat, color: Colors.black,),
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(21)
                        ),
                        height: 30,
                        width: 60,
                      ),
                      Text("Chats",style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),)
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),

                  //updates icon
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          child: Icon(Icons.change_circle, color: Colors.black,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21)
                          )
                        ),
                        Text("Updates",style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                            return UpdatesPage();
                            },));
                      },
                  ),

                  //communities icon
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          child: Icon(Icons.people_alt_outlined),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21)
                          ),
                        ),
                        Text("Communities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),)
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CommunitiesPage();
                      },));
                    },
                  ),

                  //Calls icon
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: Icon(Icons.call),
                        ),
                        Text("Calls", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),)
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CallsPage();
                      },));
                    },
                  )
                ],
              ),
            )


          ],
        ),
      ),

      
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 120, ),
        child: FloatingActionButton(onPressed: () {
        },child: Icon(Icons.add_box , color: Colors.white,),backgroundColor: Colors.green,),
      ),

    );
  }
}