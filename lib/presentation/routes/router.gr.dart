// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/feed/club/club_screen.dart';
import '../home/feed/communication_portal/communication_portal_screen.dart';
import '../home/feed/communication_portal/counseling.dart';
import '../home/feed/communication_portal/mh.dart';
import '../home/feed/communication_portal/lamhoa.dart';
import '../home/feed/communication_portal/lamthiep.dart';
import '../home/feed/communication_portal/tt58.dart';
import '../home/feed/communication_portal/pn.dart';
import '../home/feed/communication_portal/tt26.dart';
import '../home/feed/communication_portal/tban.dart';
import '../home/feed/communication_portal/tinhban.dart';
import '../home/feed/communication_portal/pbctt.dart';
import '../home/feed/communication_portal/extra_activities.dart';
import '../home/feed/communication_portal/month_planning.dart';
import '../home/feed/communication_portal/pbc_history.dart';
import '../home/feed/communication_portal/thanhtich.dart';
import '../home/feed/communication_portal/cnang.dart';
import '../home/feed/communication_portal/noiquy.dart';
import '../home/feed/communication_portal/thangdientd.dart';
import '../home/feed/communication_portal/qtpt.dart';
import '../home/feed/communication_portal/psychology_support.dart';
import '../home/feed/feed_screen.dart';
import '../home/feed/guide16/guide16_screen.dart';
import '../home/feed/guide16/tnang_screen.dart';
import '../home/feed/guide16/ktay.dart';
import '../home/feed/guide16/music_screen.dart';
import '../home/feed/guide16/poems_screen.dart';
import '../home/feed/guide16/short_stories/short_story_1.dart';
import '../home/feed/guide16/short_stories/short_story_2.dart';
import '../home/feed/guide16/short_stories/short_story_3.dart';
import '../home/feed/guide16/short_stories/short_story_4.dart';
import '../home/feed/guide16/short_stories/short_story_5.dart';
import '../home/feed/guide16/short_stories_screen.dart';
import '../home/feed/old_student/old_student_screen.dart';
import '../home/feed/parent_school/parent_school_screen.dart';
import '../home/feed/psychology_test/beck_scale/beck_scale_screen.dart';
import '../home/feed/psychology_test/psychology_test_screen.dart';
import '../home/feed/psychology_test/result_screen.dart';
import '../home/feed/psychology_test/survey/survey_screen.dart';
import '../home/feed/chuyengia/chgia.dart';
import '../home/feed/widgets/on_boarding_page.dart';
import '../home/home_screen.dart';
import '../home/misc/about.dart';

class Routes {
  static const String onBoardingPage = '/';
  static const String homeScreen = '/home-screen';
  static const String thanhTich = '/thanhtich';
  static const String qTPT = '/qTPT';
  static const String tT58 = '/tT58';
  static const String noiQuy = '/noiQuy';
  static const String thangDiemtd = '/thangDiemtd';
  static const String mH = '/mH';
  static const String lamHoa = '/lamHoa';
  static const String lamThiep = '/lamThiep';
  static const String tT26 = 'tT26';
  static const String phuNu = '/phuNu';
  static const String cNang = '/cNang';
  static const String feedScreen = '/feed-screen';
  static const String communicationPortalScreen =
      '/communication-portal-screen';
  static const String pBCHistory = '/p-bc-history';
  static const String couseling = '/Couseling';
  static const String psychologySupport = '/psychology-support';
  static const String extraActivities = '/extra-activities';
  static const String monthPlanning = '/month-planning';
  static const String guide16Screen = '/guide16-screen';
  static const String tNangScreen = '/tnangscreen';
  static const String kTayScreen = '/kTayscreen';
  static const String tBan = '/tban';
  static const String tinhBan = '/tinhban';
  static const String pBCtt = '/pBCtt';
  static const String clubScreen = '/club-screen';
  static const String psychologyTestScreen = '/psychology-test-screen';
  static const String beckScaleScreen = '/beck-scale-screen';
  static const String surveyScreen = '/survey-screen';
  static const String chGia = '/chgia';
  static const String poemsScreen = '/poems-screen';
  static const String pHhs = '/pHhs';
  static const String shortStories = '/short-stories';
  static const String musicScreen = '/music-screen';
  static const String oldStudentScreen = '/old-student-screen';
  static const String resultScreen = '/result-screen';
  static const String shortStory1 = '/short-story1';
  static const String shortStory2 = '/short-story2';
  static const String shortStory3 = '/short-story3';
  static const String shortStory4 = '/short-story4';
  static const String shortStory5 = '/short-story5';
  static const String aboutUs = '/about-us';
  static const all = <String>{
    onBoardingPage,
    homeScreen,
    feedScreen,
    communicationPortalScreen,
    pBCHistory,
    couseling,
    psychologySupport,
    extraActivities,
    monthPlanning,
    guide16Screen,
    clubScreen,
    psychologyTestScreen,
    beckScaleScreen,
    surveyScreen,
    poemsScreen,
    pHhs,
    shortStories,
    musicScreen,
    oldStudentScreen,
    resultScreen,
    shortStory1,
    shortStory2,
    shortStory3,
    shortStory4,
    shortStory5,
    aboutUs,
    thanhTich,
    qTPT,
    chGia,
    cNang,
    mH,
    tNangScreen,
    tBan,
    pBCtt,
    tinhBan,
    phuNu,
    noiQuy,
    thangDiemtd,
    tT58,
    tT26,
    lamHoa,
    kTayScreen,
    lamThiep,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onBoardingPage, page: OnBoardingPage),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.feedScreen, page: FeedScreen),
    RouteDef(Routes.communicationPortalScreen, page: CommunicationPortalScreen),
    RouteDef(Routes.pBCHistory, page: PBCHistory),
    RouteDef(Routes.mH, page: MH),
    RouteDef(Routes.lamHoa, page: LamHoa),
    RouteDef(Routes.lamThiep, page: LamThiep),
    RouteDef(Routes.kTayScreen, page: KTayScreen),
    RouteDef(Routes.tT58, page: TT58),
    RouteDef(Routes.tT26, page: TT26),
    RouteDef(Routes.noiQuy, page: NoiQuy),
    RouteDef(Routes.thangDiemtd, page: ThangDiemtd),
    RouteDef(Routes.phuNu, page: PhuNu),
    RouteDef(Routes.pBCtt, page: PBCtt),
    RouteDef(Routes.couseling, page: Couseling),
    RouteDef(Routes.psychologySupport, page: PsychologySupport),
    RouteDef(Routes.thanhTich, page: ThanhTich),
    RouteDef(Routes.cNang, page: CNang),
    RouteDef(Routes.qTPT, page: QTPT),
    RouteDef(Routes.extraActivities, page: ExtraActivities),
    RouteDef(Routes.monthPlanning, page: MonthPlanning),
    RouteDef(Routes.guide16Screen, page: Guide16Screen),
    RouteDef(Routes.tNangScreen, page: TNangScreen),
    RouteDef(Routes.tBan, page: TBan),
    RouteDef(Routes.tinhBan, page: TinhBan),
    RouteDef(Routes.clubScreen, page: ClubScreen),
    RouteDef(Routes.psychologyTestScreen, page: PsychologyTestScreen),
    RouteDef(Routes.beckScaleScreen, page: BeckScaleScreen),
    RouteDef(Routes.surveyScreen, page: SurveyScreen),
    RouteDef(Routes.chGia, page: ChGia),
    RouteDef(Routes.poemsScreen, page: PoemsScreen),
    RouteDef(Routes.pHhs, page: Phhs),
    RouteDef(Routes.shortStories, page: ShortStories),
    RouteDef(Routes.musicScreen, page: MusicScreen),
    RouteDef(Routes.oldStudentScreen, page: OldStudentScreen),
    RouteDef(Routes.resultScreen, page: ResultScreen),
    RouteDef(Routes.shortStory1, page: ShortStory1),
    RouteDef(Routes.shortStory2, page: ShortStory2),
    RouteDef(Routes.shortStory3, page: ShortStory3),
    RouteDef(Routes.shortStory4, page: ShortStory4),
    RouteDef(Routes.shortStory5, page: ShortStory5),
    RouteDef(Routes.aboutUs, page: AboutUs),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    OnBoardingPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OnBoardingPage(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => HomeScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeScreen(
          key: args.key,
          username: args.username,
        ),
        settings: data,
      );
    },
    FeedScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const FeedScreen(),
        settings: data,
      );
    },
    CommunicationPortalScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CommunicationPortalScreen(),
        settings: data,
      );
    },
    PBCHistory: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PBCHistory(),
        settings: data,
      );
    },
    TBan: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TBan(),
        settings: data,
      );
    },
    KTayScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => KTayScreen(),
        settings: data,
      );
    },
    LamThiep: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LamThiep(),
        settings: data,
      );
    },
    TT58: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TT58(),
        settings: data,
      );
    },
    TT26: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TT26(),
        settings: data,
      );
    },
    NoiQuy: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => NoiQuy(),
        settings: data,
      );
    },
    PhuNu: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PhuNu(),
        settings: data,
      );
    },
    TinhBan: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TinhBan(),
        settings: data,
      );
    },
    PBCtt: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PBCtt(),
        settings: data,
      );
    },
    TNangScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => TNangScreen(),
        settings: data,
      );
    },
    CNang: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CNang(),
        settings: data,
      );
    },
    LamHoa: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LamHoa(),
        settings: data,
      );
    },
    Couseling: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Couseling(),
        settings: data,
      );
    },
    MH: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MH(),
        settings: data,
      );
    },
    PsychologySupport: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PsychologySupport(),
        settings: data,
      );
    },
    ExtraActivities: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ExtraActivities(),
        settings: data,
      );
    },
    MonthPlanning: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MonthPlanning(),
        settings: data,
      );
    },
    ThanhTich: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ThanhTich(),
        settings: data,
      );
    },
    QTPT: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => QTPT(),
        settings: data,
      );
    },
    Guide16Screen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Guide16Screen(),
        settings: data,
      );
    },
    ClubScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ClubScreen(),
        settings: data,
      );
    },
    PsychologyTestScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PsychologyTestScreen(),
        settings: data,
      );
    },
    BeckScaleScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => BeckScaleScreen(),
        settings: data,
      );
    },
    SurveyScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SurveyScreen(),
        settings: data,
      );
    },
    ChGia: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ChGia(),
        settings: data,
      );
    },
    PoemsScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PoemsScreen(),
        settings: data,
      );
    },
    Phhs: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Phhs(),
        settings: data,
      );
    },
    ThangDiemtd: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ThangDiemtd(),
        settings: data,
      );
    },
    ShortStories: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStories(),
        settings: data,
      );
    },
    MusicScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MusicScreen(),
        settings: data,
      );
    },
    OldStudentScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OldStudentScreen(),
        settings: data,
      );
    },
    ResultScreen: (data) {
      final args = data.getArgs<ResultScreenArguments>(
        orElse: () => ResultScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ResultScreen(
          key: args.key,
          survey: args.survey,
          questionsAnswered: args.questionsAnswered,
          description: args.description,
          points: args.points,
          surveyPoints: args.surveyPoints,
        ),
        settings: data,
      );
    },
    ShortStory1: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStory1(),
        settings: data,
      );
    },
    ShortStory2: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStory2(),
        settings: data,
      );
    },
    ShortStory3: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStory3(),
        settings: data,
      );
    },
    ShortStory4: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStory4(),
        settings: data,
      );
    },
    ShortStory5: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ShortStory5(),
        settings: data,
      );
    },
    AboutUs: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AboutUs(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushOnBoardingPage() => push<dynamic>(Routes.onBoardingPage);

  Future<dynamic> pushHomeScreen({
    Key key,
    String username,
  }) =>
      push<dynamic>(
        Routes.homeScreen,
        arguments: HomeScreenArguments(key: key, username: username),
      );

  Future<dynamic> pushFeedScreen() => push<dynamic>(Routes.feedScreen);
  Future<dynamic> pushmH() => push<dynamic>(Routes.mH);

  Future<dynamic> pushtT58() => push<dynamic>(Routes.tT58);

  Future<dynamic> pushtT26() => push<dynamic>(Routes.tT26);

  Future<dynamic> pushphuNu() => push<dynamic>(Routes.phuNu);

  Future<dynamic> pushlamHoa() => push<dynamic>(Routes.lamHoa);

  Future<dynamic> pushLamThiep() => push<dynamic>(Routes.lamThiep);

  Future<dynamic> pushnoiQuy() => push<dynamic>(Routes.noiQuy);
  Future<dynamic> pushthangDiemtd() => push<dynamic>(Routes.thangDiemtd);
  Future<dynamic> pushpBCtt() => push<dynamic>(Routes.pBCtt);

  Future<dynamic> pushCommunicationPortalScreen() =>
      push<dynamic>(Routes.communicationPortalScreen);

  Future<dynamic> pushPBCHistory() => push<dynamic>(Routes.pBCHistory);

  Future<dynamic> pushcNang() => push<dynamic>(Routes.cNang);

  Future<dynamic> pushCouseling() => push<dynamic>(Routes.couseling);

  Future<dynamic> pushthanhTich() => push<dynamic>(Routes.thanhTich);
  Future<dynamic> pushchGia() => push<dynamic>(Routes.chGia);

  Future<dynamic> pushqTPT() => push<dynamic>(Routes.qTPT);

  Future<dynamic> pushkTayScreen() => push<dynamic>(Routes.kTayScreen);

  Future<dynamic> pushPsychologySupport() =>
      push<dynamic>(Routes.psychologySupport);

  Future<dynamic> pushExtraActivities() =>
      push<dynamic>(Routes.extraActivities);

  Future<dynamic> pushMonthPlanning() => push<dynamic>(Routes.monthPlanning);

  Future<dynamic> pushGuide16Screen() => push<dynamic>(Routes.guide16Screen);

  Future<dynamic> pushTNangScreen() => push<dynamic>(Routes.tNangScreen);

  Future<dynamic> pushTBan() => push<dynamic>(Routes.tBan);

  Future<dynamic> pushTinhBan() => push<dynamic>(Routes.tinhBan);

  Future<dynamic> pushClubScreen() => push<dynamic>(Routes.clubScreen);

  Future<dynamic> pushPsychologyTestScreen() =>
      push<dynamic>(Routes.psychologyTestScreen);

  Future<dynamic> pushBeckScaleScreen() =>
      push<dynamic>(Routes.beckScaleScreen);

  Future<dynamic> pushSurveyScreen() => push<dynamic>(Routes.surveyScreen);

  Future<dynamic> pushPoemsScreen() => push<dynamic>(Routes.poemsScreen);

  Future<dynamic> pushpHhs() => push<dynamic>(Routes.pHhs);

  Future<dynamic> pushShortStories() => push<dynamic>(Routes.shortStories);

  Future<dynamic> pushMusicScreen() => push<dynamic>(Routes.musicScreen);

  Future<dynamic> pushOldStudentScreen() =>
      push<dynamic>(Routes.oldStudentScreen);

  Future<dynamic> pushResultScreen({
    Key key,
    bool survey = false,
    int questionsAnswered,
    String description,
    int points = -1,
    List<int> surveyPoints,
  }) =>
      push<dynamic>(
        Routes.resultScreen,
        arguments: ResultScreenArguments(
            key: key,
            survey: survey,
            questionsAnswered: questionsAnswered,
            description: description,
            points: points,
            surveyPoints: surveyPoints),
      );

  Future<dynamic> pushShortStory1() => push<dynamic>(Routes.shortStory1);

  Future<dynamic> pushShortStory2() => push<dynamic>(Routes.shortStory2);

  Future<dynamic> pushShortStory3() => push<dynamic>(Routes.shortStory3);

  Future<dynamic> pushShortStory4() => push<dynamic>(Routes.shortStory4);

  Future<dynamic> pushShortStory5() => push<dynamic>(Routes.shortStory5);

  Future<dynamic> pushAboutUs() => push<dynamic>(Routes.aboutUs);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  final String username;
  HomeScreenArguments({this.key, this.username});
}

/// ResultScreen arguments holder class
class ResultScreenArguments {
  final Key key;
  final bool survey;
  final int questionsAnswered;
  final String description;
  final int points;
  final List<int> surveyPoints;
  ResultScreenArguments(
      {this.key,
      this.survey = false,
      this.questionsAnswered,
      this.description,
      this.points = -1,
      this.surveyPoints});
}
