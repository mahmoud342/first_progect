import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //default color is off white.
      backgroundColor: Colors.white,
      //the elevation(shadow)is remaining.
      appBar: AppBar(
        backgroundColor: Colors.white,
        //to simulate the messenger screen.
        elevation: 0,
        //to simulate the messenger screen.
        titleSpacing: 20,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              //backgroundImage attribute need a ImageProvider.
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AKedOLRZCyhxZGHpjeBz_isHt0vriAX2C8OTBLLzZN4y=s900-c-k-c0x00ffffff-no-rj'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            //color: Colors.red,
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.camera_alt,
              ),
            ),
          ),
          IconButton(
            //color: Colors.red,
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.edit,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        //padding of body  //but i need to deal the start of the body with the title -> titleSpacing.
        padding: const EdgeInsets.all(20.0),
        //all screen
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //to make the main column in start.
            children: [
              Container(
                //i want to far the children.
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  //there are colors have opacity and colors not.
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                ////////////status/////////////////
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              /////////////////////////sattus ListView /////////////////////
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                ),
              ),
              // ListView.builder(
              //             itemBuilder: (context , index)
              //                 {
              //                   return buildChatItem();
              //                 },
              //         ),
              const SizedBox(
                height: 20,
              ),
              //////////chat ListView///////////////////////
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context ,index) => buildChatItem(),
                  separatorBuilder:(context , index) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

//steps for make ListView
//1. build the item.
// Widget buildChatItem()
// {
//   return Row(..........);    //Row Widget is a chat Item.
// }
/////////////////arrow fn of chat Item  ///// 1.build item///////design of chat item////////////////
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30,
                //backgroundImage attribute need a ImageProvider.
                backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AKedOLRZCyhxZGHpjeBz_isHt0vriAX2C8OTBLLzZN4y=s900-c-k-c0x00ffffff-no-rj'),
              ),
              Padding(
                //because you want a determined directions.
                //EdgeInsets.all(8),
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                //because you want a determined directions.
                //EdgeInsets.all(8),
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mohamed elsharawy',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'Hello mohamed my name is Ali',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    // CircleAvatar(
                    //   radius: 3,
                    //   backgroundColor: Colors.blue,
                    // ),
                    //this is a different way to make circle
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Container(
                        width: 7,
                        height: 7,
                        //color: ,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text('02:00pm'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

/////////////////arrow fn of chat Item////////////////
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30,
                  //backgroundImage attribute need a ImageProvider.
                  backgroundImage: NetworkImage(
                      'https://yt3.ggpht.com/ytc/AKedOLRZCyhxZGHpjeBz_isHt0vriAX2C8OTBLLzZN4y=s900-c-k-c0x00ffffff-no-rj'),
                ),
                Padding(
                  //because you want a determined directions.
                  //EdgeInsets.all(8),
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  //because you want a determined directions.
                  //EdgeInsets.all(8),
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              'Mohamed elsharawy',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
