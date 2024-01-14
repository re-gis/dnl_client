import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Friend {
  String name;
  String avatar;

  Friend(this.name, this.avatar);
}
class MessageTemplate{
  String description;
  DateTime date;
  Friend sender;
  Friend receiver;
  MessageTemplate(this.sender,this.receiver,this.description,this.date);
}
List<MessageTemplate> messageList = [];
class Message extends StatelessWidget {
  final String emptyImage = 'assets/icons/empty_message.svg';

  List<Friend> friendList = [
    Friend("Anna", "assets/images/profile1.png"),
    Friend("Adil", "assets/images/profile2.png"),
    Friend("Marina", "assets/images/profile3.png"),
    Friend("Dean", "assets/images/profile4.jpeg"),
    Friend("Max", "assets/images/profile5.png")
  ];
  List <MessageTemplate> messageList=[
    MessageTemplate(Friend("Alex Linderson","assets/images/profile1.png"),Friend("Jennifer smith","assets/images/profile3.png"), "How are you",DateTime.now() )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 64, 87, 1),
      appBar: AppBar(
        toolbarHeight: 44,
        backgroundColor: const Color.fromRGBO(233, 64, 87, 1),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(33),
            child: const Column(
              children: [
                Text(
                  "Messages",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          if (friendList.isNotEmpty)
            SizedBox(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (Friend friend in friendList)
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          friend.avatar,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding:messageList.isEmpty?const EdgeInsets.only(top: 80.0, bottom: 80):const EdgeInsets.only(top: 30,bottom: 30,left: 33,right: 33),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  const SizedBox(width: double.infinity),
                  if (messageList.isNotEmpty) Column(children: [ for (MessageTemplate message in messageList) Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                      width: 52,
                      height: 52,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          message.sender.avatar,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                    ,Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(message.sender.name,style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),Text(message.description,style:const TextStyle(color:const Color(0xff797c7b),fontWeight:FontWeight.w400, ),)],
                    ), Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                      children: [const Text("2 min ago",style: TextStyle(color: Color(0xff797c7b),fontWeight:FontWeight.w400,fontSize: 12 ),),
                    const SizedBox(height: 7),
                       Container(
                       
                        width: 21,
                        height: 21,
                        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                        decoration:  BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
                        
                        
                        child: const Text("3",style: TextStyle(color: Colors.white),),
                      )],
                    )],
                  )],),
                  if(messageList.isEmpty)
                  SvgPicture.asset(emptyImage),
                  if(messageList.isEmpty)
                  const SizedBox(height: 16.0),
                  if(messageList.isEmpty)
                  const SizedBox(
                    width: double.infinity,
                    height: 70,
                  ),
                  if(messageList.isEmpty)
                  const Text(
                    'You have no message yet',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


