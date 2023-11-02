import 'package:flutter/material.dart';

class Friend {
  final String name;
  final String imageAsset;
  final String sampleInfo;

  Friend(this.name, this.imageAsset, this.sampleInfo);
}

class FriendCard extends StatelessWidget {
  final String friendName;
  final Function onTap;
  final String imageAsset;

  FriendCard({
    required this.friendName,
    required this.onTap,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        elevation: 4.0,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imageAsset),
          ),
          title: Text(friendName),
        ),
      ),
    );
  }
}

class FriendListScreen extends StatelessWidget {
  final List<Friend> friends = [
    Friend('Muhammad Umer Ghaus', 'profile_pic.jpg',
        'I am Muhammad Umer Ghaus. I am student of UET Lahore.'),
    Friend('Haider Ali', 'profile_pic.jpg',
        'I am Muhammad Umer Ghaus. I am CS Student of UET Lahore.'),
    // Add more friends with their image assets and sample info
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend List'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: friends.map((friend) {
          return FriendCard(
            friendName: friend.name,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FriendAccountScreen(
                    friendName: friend.name,
                    imageAsset: friend.imageAsset,
                    sampleInfo: friend.sampleInfo,
                  ),
                ),
              );
            },
            imageAsset: friend.imageAsset,
          );
        }).toList(),
      ),
    );
  }
}

class FriendAccountScreen extends StatelessWidget {
  final String friendName;
  final String imageAsset;
  final String sampleInfo;

  FriendAccountScreen({
    required this.friendName,
    required this.imageAsset,
    required this.sampleInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(friendName + "'s Account"),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'account_background.png'), // Set your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20), // Add some blank space at the top

                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align children to the left
                  children: <Widget>[
                    SizedBox(height: 20), // Add some blank space at the top
                    CircleAvatar(
                      backgroundImage: AssetImage(imageAsset),
                      radius: 60,
                    ),
                    SizedBox(height: 10), // Adjust the spacing
                    Text(
                      '90 Following | 100 Followers',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10), // Adjust the spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Handle "Hire Me" button logic
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text('Hire Me'),
                        ),
                        SizedBox(width: 10), // Add spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle "Follow" button logic
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text('Follow'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // Add some spacing
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        friendName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust the spacing
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        sampleInfo,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
