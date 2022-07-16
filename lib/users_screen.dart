import 'package:flutter/material.dart';

class UserModel
{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
  // {
  //   this.name=name; //problem -> final variable dont accept temp variable (this.-).
  // }
}
 class UserScreen extends StatelessWidget {
//list that used with it instead of th db.
  List<UserModel>users=[
    UserModel(
      id: 1,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id: 2,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id:3,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id: 4,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id: 1,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id: 2,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id:3,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
    UserModel(
      id: 4,
      name: 'mahmoud abd elaziz',
      phone: '01276582901',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          'Users',
        ),

      ),
      body: ListView.separated(
          itemBuilder:(context, index) => buildUserItem(users[index]),
          separatorBuilder:(context , index)=> Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }
////////////////////////////////////////////////////
  // to build ListView:
  //1.build Item in external method.
  //2.build List.
  //3.but Item in List.
////////////////////////////////////////////////////
 Widget buildUserItem(UserModel user) =>Padding(
   padding: const EdgeInsets.all(8.0),
   child: Row(
     children: [
       CircleAvatar(
         radius:25 ,
         child: Text(
           //'1',
           '${user.id}',
           style:TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           ),

         ),
       ),
       SizedBox(
         width: 20,
       ),
       Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             //'Mahmoud Abdel Aziz',
             '${user.name}',
           ),
           Text(
             //'+201276582901',
             '${user.phone}',
             style: TextStyle(
               color:Colors.grey[500],
             ),
           ),
         ],
       ),
     ],
   ),
 );



}
