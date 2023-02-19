import 'package:ODevs/models/event_post.dart';
import 'package:ODevs/models/job_post.dart';
import 'package:ODevs/models/sponsor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

/// A class that contains all the methods that interact with the firebase database
class DatabaseHelper {

  final FirebaseFirestore db = FirebaseFirestore.instance;

  DatabaseHelper();

  /// a function that retrieves job post data from firebase firestore
  /// and returns a list of job posts
  Future<List<JobPost>> getJobPosts() async {
    List<JobPost> jobPosts = [];
    dynamic snapshot = await db.collection('job_posts').get();
    snapshot.docs.forEach((doc) {
      jobPosts.add(JobPost.fromMap(doc.data()));
    });
    return jobPosts;
  }
  

  /// a function that posts job post data to firebase firestore
  /// and returns a boolean value of true if successful and false if not
  Future<bool> postJobPost(JobPost jobPost) async {
    try {
      await db.collection('job_posts').doc(jobPost.jobTitle).set({
        'job_title': jobPost.jobTitle,
        'company_name': jobPost.companyName,
        'job_location': jobPost.jobLocation,
        'logo_uri': jobPost.logoUri,
        'short_description': jobPost.shortDescription,
        'job_description': jobPost.jobDescription,
        'job_url': jobPost.jobUrl,
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  /// a function that updates job post data to firebase firestore
  /// and returns a boolean value of true if successful and false if not
  Future<bool> updateJobPost(JobPost jobPost) async {
    try {
      await db.collection('job_posts').doc(jobPost.jobTitle).update({
        'job_title': jobPost.jobTitle,
        'company_name': jobPost.companyName,
        'job_location': jobPost.jobLocation,
        'logo_uri': jobPost.logoUri,
        'short_description': jobPost.shortDescription,
        'job_description': jobPost.jobDescription,
        'job_url': jobPost.jobUrl,
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  /// a function that returns a list of sponsors from firebase firestore
  Future<List<Sponsor>> getSponsors() async {
    List<Sponsor> sponsors = [];
    dynamic snapshot = await db.collection('sponsors').get();
    snapshot.docs.forEach((doc) {
      sponsors.add(Sponsor.fromMap(doc.data()));
    });
    return sponsors;
  }

  /// a function that posts sponsor data to firebase firestore
  /// and returns a boolean value of true if successful and false if not
  /// [sponsor] is the sponsor object to be posted
  Future<bool> postSponsor(Sponsor sponsor) async {
    try {
      await db.collection('sponsors').doc(sponsor.name).set({
        'name': sponsor.name,
        'logo_uri': sponsor.logo,
        'url': sponsor.url,
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  /// a function that returns a list of event posts from firebase firestore
  Future<List<EventPost>> getEvents() async {
    List<EventPost> events = [];
    dynamic snapshot = await db.collection('events').get();
    snapshot.docs.forEach((doc) {
      events.add(EventPost.fromMap(doc.data()));
    });
    return events;
  }
  
}
