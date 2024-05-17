import 'package:flutter/material.dart';
import 'package:wondershare/Widgets/job_card.dart';
import 'package:wondershare/data/mock_data.dart';
import 'package:wondershare/screens/add_jobs_Screen.dart';
import 'package:wondershare/utils/colors.dart';

class JobOpportunitiesPage extends StatelessWidget {
  const JobOpportunitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photography Jobs"),
        backgroundColor: appbarclr,
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return JobCard(job: jobs[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddJobScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Post a Job',
      ),
    );
  }
}
