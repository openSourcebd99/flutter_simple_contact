import 'package:flutter/material.dart';

class ContactDetailBottomSheet extends StatelessWidget {
  final Map<String, dynamic> contact;

  const ContactDetailBottomSheet({Key? key, required this.contact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contact Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Text('Name: ${contact['name']}'),
          SizedBox(height: 8.0),
          Text('Email: ${contact['email']}'),
          SizedBox(height: 8.0),
          Text('Phone Number: ${contact['phone_no']}'),
        ],
      ),
    );
  }
}
