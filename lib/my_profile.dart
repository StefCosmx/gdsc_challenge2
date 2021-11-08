import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String profilePicPath;
  final String emailAddress;
  final String phoneNumber;

  const MyProfilePage({required this.firstName, required this.lastName, required this.profilePicPath,required this.emailAddress,required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold
          )
        ),
        leading: Icon(
          Icons.chevron_left,
          size: 50,
        ),
        actions: [
          Icon(
            Icons.settings,
            size: 40,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    profilePicPath
                  ),
                ),
                Text(
                  firstName + ' ' + lastName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Container(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: (){
                        print('YOU CREEP! Why are you following me');
                      },
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                  ),
                ),
              ],
            )
          ),
          Text(
            'About me',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          Text(
            'there\'s nothing interesting about me'
          ),
          SizedBox(height: 30),
          Text(
            'Email: ' + emailAddress,
          ),
          SizedBox(height: 30),
          Text(
            'Phone number: ' + phoneNumber,
          )
        ],
      )
    );
  }
}