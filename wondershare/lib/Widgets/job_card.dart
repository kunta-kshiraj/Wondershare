// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wondershare/models/job.dart';
// import 'package:wondershare/utils/colors.dart';
// import 'package:intl/intl.dart';
// // import 'package:wondershare/Widgets/comment_card.dart';
// import 'package:wondershare/Widgets/like_animation.dart';
// // import 'package:wondershare/models/user.dart' as model;
// import 'package:wondershare/models/user.dart';
// import 'package:wondershare/providers/user_provider.dart';
// import 'package:wondershare/resources/firestore_methods.dart';
// import 'package:wondershare/screens/comments_screen.dart';
// // import 'package:wondershare/screens/comments_screen.dart';
// import 'package:wondershare/utils/colors.dart';
// import 'package:wondershare/utils/global_variable.dart';
// import 'package:wondershare/utils/utils.dart';
// // import 'package:wondershare/widgets/like_animation.dart';
// // import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

class JobCard extends StatefulWidget {
  final Job job;
  const JobCard({Key? key, required this.job}) : super(key: key);

  @override
  _JobCardState createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  bool _isApplied = false; // State to track if the job has been applied for

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.job.createdBy, style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 231, 128, 68))),
            SizedBox(height: 8),
            Text(widget.job.role, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 8),
            Text(widget.job.description, maxLines: 2, overflow: TextOverflow.ellipsis),
            SizedBox(height: 8),
            TextButton(
              onPressed: _applyJob,
              child: Text(
                _isApplied ? 'Applied' : 'Apply', // Change the text based on application state
                style: TextStyle(color: Color.fromARGB(255, 124, 124, 240)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _applyJob() {
    setState(() {
      _isApplied = true; // Change the state to applied when button is clicked
    });
  }
}
