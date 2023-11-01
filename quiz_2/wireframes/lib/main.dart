import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle, size: 48),
                          Text('Accounts', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                      Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                      'Add another account - so you can switch between them easily.'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your existing account',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Manage account',
                          style: TextStyle(
                              color: const Color.fromARGB(222, 181, 132, 0))),
                    ],
                  ),
                  SizedBox(height: 16),
                  AccountCard(
                    name: 'Panji Pradana',
                    email: 'panjiperdana@example.com',
                    imageUrl: 'assets/user1.png',
                  ),
                  AccountCard(
                    name: 'Sulistyp Aji',
                    email: 'sulistypaji@example.com',
                    imageUrl: 'assets/user2.png',
                  ),
                  AccountCard(
                    name: 'Astaru Lopez',
                    email: 'astarulopex@example.com',
                    imageUrl: 'assets/user3.png',
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => UserAccountsScreen()));
                    },
                    child: Text('Add Another +'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;

  AccountCard(
      {required this.name, required this.email, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(email),
        trailing: Icon(Icons.check),
      ),
    );
  }
}
