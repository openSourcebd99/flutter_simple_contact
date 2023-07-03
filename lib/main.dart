import 'package:flutter/material.dart';
import 'details_bottom_sheet.dart';

void main() {
  runApp(const Contact());
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Contact List'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> contacts = [
    {
      'name': 'Contact 1',
      'email': 'abc@gmail.com',
      'phone_no': '017XXXXXXXX',
    },
    {
      'name': 'Contact 2',
      'email': 'def@gmail.com',
      'phone_no': '018XXXXXXXX',
    },
    {
      'name': 'Contact 3',
      'email': 'ghi@gmail.com',
      'phone_no': '019XXXXXXXX',
    },
  ];

  void _showContactDetails(Map<String, dynamic> contact) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ContactDetailBottomSheet(
          contact: contact,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]['name']!),
            onTap: () => _showContactDetails(contacts[index]),
          );
        },
      ),
    );
  }
}
