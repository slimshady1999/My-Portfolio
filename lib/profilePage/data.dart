import 'package:flutter/material.dart';

// Web Project Data

class WebProjectData {
  String? button;
  String? image;
  int? id;
  String? title;
  String? description;
  String? features;
  String? technology;
  IconData? icon;

  WebProjectData({
    this.button,
    this.image,
    this.id,
    this.title,
    this.description,
    this.features,
    this.technology,
    this.icon,
  });
}

final List<WebProjectData> data = [
  WebProjectData(
      id: 1,
      button: "view",
      image: "stalliontrading1.PNG",
      title: "Stallion Trading",
      description:
          "Stallion Trading is a new Crypto Currency website with all powerful tools",
      features: "Live Crypto Prices  <> ",
      technology: "Wordpress <> CMS",
      icon: Icons.star),
  WebProjectData(
      id: 2,
      button: "view",
      image: "vistachainimage1.PNG",
      title: "Vista Chain",
      description:
          "Vista Chain is a new Crypto Currency website with all powerful tools",
      features: "Live Crypto Prices <> ",
      technology: "Wordpress <> CMS",
      icon: Icons.star),
  WebProjectData(
      id: 3,
      button: "view",
      image: "portfolio1.PNG",
      title: "Shady Tech",
      description: "ShadyTech is my personal portfolio website",
      features: ".... ",
      technology: "Wordpress <> CMS",
      icon: Icons.star),
  WebProjectData(
      id: 4,
      button: "view",
      image: "elongateinvestment1.PNG",
      title: "Stallion Trading",
      description:
          "Elon Gate is a new Crypto Currency website with all powerful tools",
      features: "Live Crypto Prices <> ",
      technology: "Wordpress <> CMS",
      icon: Icons.star),
];

// Mobile Project Data //

class MobileProjectData {
  int? id;
  String? button;
  String? image;
  String? title;
  String? description;
  String? technology;
  IconData? icon;

  MobileProjectData({
    this.id,
    this.button,
    this.image,
    this.title,
    this.description,
    this.technology,
    this.icon,
  });
}

final List<MobileProjectData> data1 = [
  MobileProjectData(
      id: 1,
      button: "view",
      image: "portfoliomobile1.PNG",
      title: "Portfolio",
      description: "Portfolio is my personal portfolio Mobile Application",
      technology: "Flutter",
      icon: Icons.star)
];

// Social Media Data //

class SocialMediaData {
  String? image;
  String? title;
  String? buttontitle;

  SocialMediaData({
    this.image,
    this.title,
    this.buttontitle,
  });
}

final List<SocialMediaData> data2 = [
  SocialMediaData(
      image: "twitter.png", title: "Twitter", buttontitle: "Contact"),
  SocialMediaData(
      image: "github-logo.png", title: "Github", buttontitle: "view Repo"),
  SocialMediaData(
      image: "facebook.png", title: "Facebook", buttontitle: "Contact"),
];
