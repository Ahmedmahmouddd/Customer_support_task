// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home Menu`
  String get homeMenu {
    return Intl.message('Home Menu', name: 'homeMenu', desc: '', args: []);
  }

  /// `Customer Service`
  String get customerService {
    return Intl.message(
      'Customer Service',
      name: 'customerService',
      desc: '',
      args: [],
    );
  }

  /// `Help & FAQ`
  String get helpFAQ {
    return Intl.message('Help & FAQ', name: 'helpFAQ', desc: '', args: []);
  }

  /// `FAQs`
  String get faqs {
    return Intl.message('FAQs', name: 'faqs', desc: '', args: []);
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message('Contact Us', name: 'contactUs', desc: '', args: []);
  }

  /// `Live Chat`
  String get liveChat {
    return Intl.message('Live Chat', name: 'liveChat', desc: '', args: []);
  }

  /// `I am here to assist you`
  String get iamHereToAssistYou {
    return Intl.message(
      'I am here to assist you',
      name: 'iamHereToAssistYou',
      desc: '',
      args: [],
    );
  }

  /// `Hello! I am here to assist you`
  String get helloIamHereToAssistYou {
    return Intl.message(
      'Hello! I am here to assist you',
      name: 'helloIamHereToAssistYou',
      desc: '',
      args: [],
    );
  }

  /// `Send a message`
  String get sendAmessage {
    return Intl.message(
      'Send a message',
      name: 'sendAmessage',
      desc: '',
      args: [],
    );
  }

  /// `is required`
  String get isRequired {
    return Intl.message('is required', name: 'isRequired', desc: '', args: []);
  }

  /// `How can we help you?`
  String get howCanWeHelpYou {
    return Intl.message(
      'How can we help you?',
      name: 'howCanWeHelpYou',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message('Support', name: 'support', desc: '', args: []);
  }

  /// `Help center`
  String get helpCenter {
    return Intl.message('Help center', name: 'helpCenter', desc: '', args: []);
  }

  /// `General Information`
  String get generalInformation {
    return Intl.message(
      'General Information',
      name: 'generalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Need assistance with your account, orders, or anything else? Our customer service team is always ready to help you out promptly and professionally.`
  String get customerServiceText {
    return Intl.message(
      'Need assistance with your account, orders, or anything else? Our customer service team is always ready to help you out promptly and professionally.',
      name: 'customerServiceText',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture Upload`
  String get profilePictureUpload {
    return Intl.message(
      'Profile Picture Upload',
      name: 'profilePictureUpload',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture`
  String get profilePicture {
    return Intl.message(
      'Profile Picture',
      name: 'profilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Upload your profile picture`
  String get uploadYouProfilePicture {
    return Intl.message(
      'Upload your profile picture',
      name: 'uploadYouProfilePicture',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Service`
  String get service {
    return Intl.message('Service', name: 'service', desc: '', args: []);
  }

  /// `What is this app?`
  String get q1 {
    return Intl.message('What is this app?', name: 'q1', desc: '', args: []);
  }

  /// `This app helps you connect with customer support quickly and easily.`
  String get a1 {
    return Intl.message(
      'This app helps you connect with customer support quickly and easily.',
      name: 'a1',
      desc: '',
      args: [],
    );
  }

  /// `How do I contact support?`
  String get q2 {
    return Intl.message(
      'How do I contact support?',
      name: 'q2',
      desc: '',
      args: [],
    );
  }

  /// `You can use the live chat or send us a message via the Contact Us section.`
  String get a2 {
    return Intl.message(
      'You can use the live chat or send us a message via the Contact Us section.',
      name: 'a2',
      desc: '',
      args: [],
    );
  }

  /// `Is support available 24/7?`
  String get q3 {
    return Intl.message(
      'Is support available 24/7?',
      name: 'q3',
      desc: '',
      args: [],
    );
  }

  /// `Yes, our support team is available around the clock.`
  String get a3 {
    return Intl.message(
      'Yes, our support team is available around the clock.',
      name: 'a3',
      desc: '',
      args: [],
    );
  }

  /// `Do I need an account to use support?`
  String get q4 {
    return Intl.message(
      'Do I need an account to use support?',
      name: 'q4',
      desc: '',
      args: [],
    );
  }

  /// `No, you can access general help without logging in.`
  String get a4 {
    return Intl.message(
      'No, you can access general help without logging in.',
      name: 'a4',
      desc: '',
      args: [],
    );
  }

  /// `How do I reset my password?`
  String get q5 {
    return Intl.message(
      'How do I reset my password?',
      name: 'q5',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings > Account > Reset Password and follow the instructions.`
  String get a5 {
    return Intl.message(
      'Go to Settings > Account > Reset Password and follow the instructions.',
      name: 'a5',
      desc: '',
      args: [],
    );
  }

  /// `How do I update my profile?`
  String get q6 {
    return Intl.message(
      'How do I update my profile?',
      name: 'q6',
      desc: '',
      args: [],
    );
  }

  /// `Navigate to your profile and tap Edit to update your information.`
  String get a6 {
    return Intl.message(
      'Navigate to your profile and tap Edit to update your information.',
      name: 'a6',
      desc: '',
      args: [],
    );
  }

  /// `Can I change my email address?`
  String get q7 {
    return Intl.message(
      'Can I change my email address?',
      name: 'q7',
      desc: '',
      args: [],
    );
  }

  /// `Yes, you can update it in your account settings.`
  String get a7 {
    return Intl.message(
      'Yes, you can update it in your account settings.',
      name: 'a7',
      desc: '',
      args: [],
    );
  }

  /// `How do I delete my account?`
  String get q8 {
    return Intl.message(
      'How do I delete my account?',
      name: 'q8',
      desc: '',
      args: [],
    );
  }

  /// `Please contact support to request account deletion.`
  String get a8 {
    return Intl.message(
      'Please contact support to request account deletion.',
      name: 'a8',
      desc: '',
      args: [],
    );
  }

  /// `How do I track my service request?`
  String get q9 {
    return Intl.message(
      'How do I track my service request?',
      name: 'q9',
      desc: '',
      args: [],
    );
  }

  /// `Go to the Services section to see status and updates.`
  String get a9 {
    return Intl.message(
      'Go to the Services section to see status and updates.',
      name: 'a9',
      desc: '',
      args: [],
    );
  }

  /// `Can I cancel a request after submitting?`
  String get q10 {
    return Intl.message(
      'Can I cancel a request after submitting?',
      name: 'q10',
      desc: '',
      args: [],
    );
  }

  /// `Yes, you can cancel it from the request details page.`
  String get a10 {
    return Intl.message(
      'Yes, you can cancel it from the request details page.',
      name: 'a10',
      desc: '',
      args: [],
    );
  }

  /// `What types of services are supported?`
  String get q11 {
    return Intl.message(
      'What types of services are supported?',
      name: 'q11',
      desc: '',
      args: [],
    );
  }

  /// `We support account help, technical support, and order inquiries.`
  String get a11 {
    return Intl.message(
      'We support account help, technical support, and order inquiries.',
      name: 'a11',
      desc: '',
      args: [],
    );
  }

  /// `How long does it take to get a response?`
  String get q12 {
    return Intl.message(
      'How long does it take to get a response?',
      name: 'q12',
      desc: '',
      args: [],
    );
  }

  /// `Usually within a few minutes via live chat, or up to 24 hours via email.`
  String get a12 {
    return Intl.message(
      'Usually within a few minutes via live chat, or up to 24 hours via email.',
      name: 'a12',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message('Call', name: 'call', desc: '', args: []);
  }

  /// `GitHub`
  String get gitHub {
    return Intl.message('GitHub', name: 'gitHub', desc: '', args: []);
  }

  /// `linkedIn`
  String get linkedIn {
    return Intl.message('linkedIn', name: 'linkedIn', desc: '', args: []);
  }

  /// `Whatsapp`
  String get whatsapp {
    return Intl.message('Whatsapp', name: 'whatsapp', desc: '', args: []);
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `search`
  String get search {
    return Intl.message('search', name: 'search', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
