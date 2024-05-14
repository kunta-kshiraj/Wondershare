import 'package:flutter/material.dart';
import 'package:wondershare/utils/colors.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({Key? key}) : super(key: key);

  @override
  _AddJobScreenState createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  final TextEditingController _createdByController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _addJob() {
    // Here you can handle the logic to add the job to your data source
    Navigator.pop(context); // This dismisses the screen after the job is added
  }

  @override
  Widget build(BuildContext context) {
    // Using MediaQuery to get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Add a New Job"),
        backgroundColor: appbarclr,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _createdByController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Created By',
                  labelStyle: TextStyle(color: appbarclr),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _roleController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Role',
                  labelStyle: TextStyle(color: appbarclr),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _descriptionController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(color: appbarclr),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              // Button is now dynamically sized based on screen width
              ElevatedButton(
                onPressed: _addJob,
                child: Text('Add Job'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenWidth * 0.8, 50),  // Minimum button width and height
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
