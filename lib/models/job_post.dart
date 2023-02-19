import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobPost {
  final String jobTitle;
  final String companyName;
  final String jobLocation;
  final String logoUri;
  final String shortDescription;
  final String jobDescription;
  final String jobUrl;
  final bool accepted;

  JobPost({
    required this.jobTitle,
    required this.companyName,
    required this.jobLocation,
    required this.logoUri,
    required this.shortDescription,
    required this.jobDescription,
    required this.jobUrl,
    this.accepted = false,
  });

  factory JobPost.fromMap(Map<String, dynamic> data) {
    return JobPost(
      jobTitle: data['job_title'],
      companyName: data['company_name'],
      jobLocation: data['job_location'],
      logoUri: data['logo_uri'],
      shortDescription: data['short_description'],
      jobDescription: data['job_description'],
      jobUrl: data['job_url'],
    );
  }
}

class JobPostDetail{
  final String jobTitle;
  final String companyName;
  final String jobLocation;
  final String logoUri;
  final String shortDescription;
  final String jobDescription;
  final String jobUrl;

  JobPostDetail({
    required this.jobTitle,
    required this.companyName,
    required this.jobLocation,
    required this.logoUri,
    required this.shortDescription,
    required this.jobDescription,
    required this.jobUrl,
  });

  factory JobPostDetail.fromMap(Map<String, dynamic> data) {
    return JobPostDetail(
      jobTitle: data['job_title'],
      companyName: data['company_name'],
      jobLocation: data['job_location'],
      logoUri: data['logo_uri'],
      shortDescription: data['short_description'],
      jobDescription: data['job_description'],
      jobUrl: data['job_url'],
    );
  }

  @override
  String toString() {
    return "$jobTitle - $companyName - $jobLocation - $jobUrl";
  }
}
