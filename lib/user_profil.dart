import 'package:flutter/material.dart';

class UserInfoProfile extends StatelessWidget {
  const UserInfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade100,
          title: Text('Мой профиль', style: const TextStyle(color: Colors.white)),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      'https://source.unsplash.com/50x50/?portrait',
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                      child: Column(
                    children: [
                      Text('Asya Movchan',
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      SizedBox(height: 10),
                      Text('+380994434391',
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      SizedBox(height: 10),
                      Text('rjwrcbcj@gmail.com',
                          style: TextStyle(
                            fontSize: 17,
                          )),
                    ],

                  )),
                ],
              ),


              SizedBox(height: 40),
              Container(
                height: 40,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Account setting',
                    style: TextStyle(
                      fontSize: 18),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              SettingInformation(),
            ],
          ),
        ),
      ),
    );
  }
}



class SettingInformation extends StatelessWidget {
  const SettingInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SettingProfile(),
        SettingProfile(),
        SettingProfile(),
        SettingProfile(),
      ],
    );
  }
}

class SettingProfile extends StatelessWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Изменить имя', style: TextStyle(fontSize: 16)),
          ElevatedButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15, vertical: 8)),
              ),
              onPressed: () {},
              child: Text('Click', style: TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}

