import 'package:auto_route/auto_route_annotations.dart';
import 'package:phanboichau_app/presentation/home/feed/bang_diem/bang_diem.dart';
import 'package:phanboichau_app/presentation/home/feed/chuyengia/chgia.dart';
import 'package:phanboichau_app/presentation/home/feed/club/club_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/cnang.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/communication_portal_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/counseling.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/extra_activities.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/lamhoa.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/lamthiep.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/mh.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/month_planning.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/nq.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/pbc_history.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/pbctt.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/pn.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/psychology_support.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/qtpt.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/tban.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/thangdientd.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/thanhtich.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/tinhban.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/tt26.dart';
import 'package:phanboichau_app/presentation/home/feed/communication_portal/tt58.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/guide16_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/ktay.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories/short_story_1.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories/short_story_2.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories/short_story_3.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories/short_story_4.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories/short_story_5.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/poems_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/music_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/short_stories_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/guide16/tnang_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/old_student/old_student_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/parent_school/parent_school_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/psychology_test/beck_scale/beck_scale_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/psychology_test/psychology_test_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/psychology_test/result_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/psychology_test/survey/survey_screen.dart';
import 'package:phanboichau_app/presentation/home/feed/timetable/timetable.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/on_boarding_page.dart';
import 'package:phanboichau_app/presentation/home/misc/about.dart';
import 'package:phanboichau_app/presentation/home/feed/feed_screen.dart';
import 'package:phanboichau_app/presentation/home/home_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // Onboarding
    CupertinoRoute(page: OnBoardingPage, initial: true),

    // Primary Screens
    CupertinoRoute(page: HomeScreen),
    CupertinoRoute(page: FeedScreen),

    // Advanced Screens
    CupertinoRoute(page: BangDiem),
    CupertinoRoute(page: Timetable),
    CupertinoRoute(page: CommunicationPortalScreen),
    CupertinoRoute(page: PBCHistory),
    CupertinoRoute(page: Couseling),
    CupertinoRoute(page: ThanhTich),
    CupertinoRoute(page: QTPT),
    CupertinoRoute(page: TNangScreen),
    CupertinoRoute(page: LamHoa),
    CupertinoRoute(page: LamThiep),
    CupertinoRoute(page: ThangDiemtd),
    CupertinoRoute(page: TT58),
    CupertinoRoute(page: TT26),
    CupertinoRoute(page: ChGia),
    CupertinoRoute(page: CNang),
    CupertinoRoute(page: MH),
    CupertinoRoute(page: KTayScreen),
    CupertinoRoute(page: TBan),
    CupertinoRoute(page: PBCtt),
    CupertinoRoute(page: TinhBan),
    CupertinoRoute(page: PhuNu),
    CupertinoRoute(page: PsychologySupport),
    CupertinoRoute(page: ExtraActivities),
    CupertinoRoute(page: Guide16Screen),
    CupertinoRoute(page: ClubScreen),
    CupertinoRoute(page: PsychologyTestScreen),
    CupertinoRoute(page: BeckScaleScreen),
    CupertinoRoute(page: SurveyScreen),
    CupertinoRoute(page: PoemsScreen),
    CupertinoRoute(page: Phhs),
    CupertinoRoute(page: ShortStories),
    CupertinoRoute(page: MusicScreen),
    CupertinoRoute(page: OldStudentScreen),
    CupertinoRoute(page: ResultScreen),
    CupertinoRoute(page: MonthPlanning),
    CupertinoRoute(page: NQ),

    CupertinoRoute(page: ShortStory1),
    CupertinoRoute(page: ShortStory2),
    CupertinoRoute(page: ShortStory3),
    CupertinoRoute(page: ShortStory4),
    CupertinoRoute(page: ShortStory5),

    // Setting Tabs
    CupertinoRoute(page: AboutUs),
  ],
)
class $Router {}
