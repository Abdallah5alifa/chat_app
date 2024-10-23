import 'package:flutter/material.dart';

class AllChats extends StatelessWidget {
  const AllChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context,index){
                return const ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Khalifa'),
                  subtitle: Text('#Don’t give up'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('12:30 PM'),
                      SizedBox(height: 4,),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.green,
                        child: Text('3',
                        style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                );
              },
              ),
              
          ),
    
        );
  }
}