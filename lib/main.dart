import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'screens/add_diary.dart';
import 'screens/autogenetic.dart';
import 'screens/breathing_exercises.dart';
import 'screens/calendar_page.dart';
import 'screens/chat_page.dart';
import 'screens/diary_days_list.dart';
import 'screens/edit_profile.dart';
import 'screens/exercises.dart';
import 'screens/forgotten_password.dart';
import 'screens/four_four_four_breath.dart';
import 'screens/login_page.dart';
import 'screens/login_register.dart';
import 'screens/main_page.dart';
import 'screens/personal_information.dart';
import 'screens/professional_support.dart';
import 'screens/register_page.dart';
import 'screens/relaxation_exercises.dart';
import 'screens/splash_screen.dart';
import 'screens/test_phq9.dart';
import 'screens/test_results.dart';
import 'screens/tests.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

// Global list to hold test results
List<String> testResults = [];

// Global variables to hold user information
String userName = "";
String userSurname = "";
String userNickname = "";
String userPhone = "";
String userEmail = "";
String userDiagnosis = "";
String userMedications = "";
String userAvatar = 'assets/images/fox.png';

// Avatar options
List<String> avatarPaths = [
  'assets/images/bear.png',
  'assets/images/cat.png',
  'assets/images/chicken.png',
  'assets/images/dog.png',
  'assets/images/fox.png',
  'assets/images/meerkat.png',
  'assets/images/panda.png',
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login_register': (context) => LoginRegisterPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/main_page': (context) => MainPage(),
        '/tests': (context) => TestsPage(),
        '/exercises': (context) => ExercisesPage(),
        '/breathing_exercises': (context) => BreathingExercisesPage(),
        '/relaxation_exercises': (context) => RelaxationExercisesPage(),
        '/professional_support': (context) => ProfessionalSupportPage(),
        '/test_results': (context) => TestResultsPage(),
        '/four_four_four_breath': (context) => FourFourFourBreathPage(),
        '/autogenetic': (context) => AutogeneticPage(),
        '/test_phq9': (context) => TestPHQ9Page(),
        '/personal_information': (context) => PersonalInformationPage(),
        '/edit_profile': (context) => EditProfilePage(),
        '/forgotten_password': (context) => ForgottenPasswordPage(),
        '/chat': (context) => ChatPage(),
        '/diary': (context) => DiaryDaysList(),
        '/calendar': (context) => CalendarPage(),
        '/add_diary': (context) => AddDiaryPage(),
      },
    );
  }
}
