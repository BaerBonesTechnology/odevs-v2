//TODO: get events upcoming from MeetUp API
//TODO: get job postings from firebase database
//TODO: get blog posts from firebase database
//TODO: get sponsor information from firebase databaseNFC Payments

import 'package:ODevs/util/database_helper.dart';

import '../models/job_post.dart';

class HomeViewModel {
  /// A function that retrieves job post data from firebase firestore
  /// and returns a list of job posts

  final DatabaseHelper db = DatabaseHelper();
  late List<JobPost> jobPosts;

  HomeViewModel() {
    getJobPosts();
  }

  List<JobPost> getJobPosts() {
    db.getJobPosts().then((value) {
      jobPosts = value;
    });

    return jobPosts;
  }
}
