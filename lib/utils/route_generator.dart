import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/screen_bindings.dart';
import 'package:health_app/views/screens/addprovider/screen/addproviderscreen.dart';
import 'package:health_app/views/screens/doctoravailibility/screen/doctoravailibility.dart';
import 'package:health_app/views/screens/doctorbooking/screen/doctorbooking.dart';
import 'package:health_app/views/screens/home/home/home.dart';
import 'package:health_app/views/screens/hospitals/screen/hospitalsscreen.dart';
import 'package:health_app/views/screens/login/patientlogin/screen/patientlogin.dart';
import 'package:health_app/views/screens/login/practicehelp/screen/practicehelpscreen.dart';
import 'package:health_app/views/screens/login/providerlogin/screen/providerloginscreen.dart';
import 'package:health_app/views/screens/moreinfo/screen/moreinfoscreen.dart';
import 'package:health_app/views/screens/myhealthmatch/screen/myhealthmatchscreen.dart';
import 'package:health_app/views/screens/performance/screen/performancescreen.dart';
import 'package:health_app/views/screens/practiceinformation/screen/practiceinformationscreen.dart';
import 'package:health_app/views/screens/providermainpage/screen/providermainpage.dart';
import 'package:health_app/views/screens/signup/ProviderSignup/screen/providersignupscreen.dart';
import 'package:health_app/views/screens/signup/MAIN/screen/signupscreen.dart';
import 'package:health_app/views/screens/signup/confirmemail/screen/confirmemailscreen.dart';
import 'package:health_app/views/screens/signup/patientsignup/screen/patientsignupscreen.dart';
import 'package:health_app/views/screens/signup/signupassword/screen/signuppasswordscreen.dart';
import 'package:health_app/views/screens/welcome/screen/welcomescreen.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kSignUpRoute,
          page: () => SignupScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHomescreen,
          page: () => HomeScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kPatientLoginRoute,
          page: () => PatientLoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kProviderSignUpRoute,
          page: () => ProviderSigupScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kProviderSignUpPasswordRoute,
          page: () => ProviderSigupPassswordScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kconfirmeailroute,
          page: () => ConfrimEmailScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kproviderloginroute,
          page: () => ProviderLoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: Kpracticehelproute,
          page: () => PracticehelpScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kpatientsignuproute,
          page: () => PatientSignupScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kdoctoravailibilityroute,
          page: () => DoctorAvailibilityScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kdoctorbookingroute,
          page: () => DoctorBookingScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: khospitalsroute,
          page: () => HospitalsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kmyhealthmatchroute,
          page: () => MyHealthMatchScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kprovidermainroute,
          page: () => ProviderMainScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kwelcomeroute,
          page: () => WelcomeScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kaddnewproviderroute,
          page: () => AddNewProviderScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kpracticeinforoute,
          page: () => PracticeInformationScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kmoreinforoute,
          page: () => MoreInfoScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kperformanceroute,
          page: () => PerformanceScreen(),
          binding: ScreenBindings())
    ];
  }
}
