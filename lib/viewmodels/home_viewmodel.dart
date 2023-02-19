//TODO: get events upcoming from MeetUp API
//TODO: get job postings from firebase database
//TODO: get blog posts from firebase database
//TODO: get sponsor information from firebase databaseNFC Payments

import 'package:ODevs/models/event_post.dart';
import 'package:ODevs/models/sponsor.dart';
import 'package:ODevs/util/database_helper.dart';

import '../models/job_post.dart';

class HomeViewModel {
  /// A function that retrieves job post data from firebase firestore
  /// and returns a list of job posts

  final DatabaseHelper db = DatabaseHelper();
  late List<JobPost> jobPosts = [];
  late List<EventPost> eventPosts = [];
  late List<Sponsor> sponsors = [];
  
  HomeViewModel() {
    getJobPosts();
    getEventPosts();
    getSponsors();
  }

  List<JobPost> getJobPosts() {
    db.getJobPosts().then((value) {
      jobPosts.addAll(value);
    });
    return jobPosts;
  }  
  
  List<EventPost> getEventPosts() {
    db.getEvents().then((value) {
      eventPosts.addAll(value);
    });
      return eventPosts;
    }
    
    List<Sponsor> getSponsors() {
      db.getSponsors().then((value) {
        sponsors.addAll(value);
      });
      return sponsors;
    }
}
