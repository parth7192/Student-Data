import 'package:student_data/header.dart';
import 'package:student_data/pages/add_data_page/add_data_page.dart';

class AppRoute {
  static String splashScreen = '/';
  static String homePage = 'homepage';
  static String detailsPage = 'detailpage';
  static String adddataPage = 'adddatapage';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    detailsPage: (context) => const DetailsPage(),
    adddataPage: (context) => const AddDataPage(),
  };
}
