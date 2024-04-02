import 'package:get/get.dart';
import 'package:health_app/views/screens/addprovider/controller/addprovidercontroller.dart';
import 'package:health_app/views/screens/controller/homecontroller.dart';
import 'package:health_app/views/screens/doctoravailibility/controller/doctoravailibility.dart';
import 'package:health_app/views/screens/doctorbooking/controller/doctorbookingcontroller.dart';
import 'package:health_app/views/screens/hospitals/controller/hospitalscontroller.dart';
import 'package:health_app/views/screens/login/patientlogin/controller/pateintlogincontroller.dart';
import 'package:health_app/views/screens/login/practicehelp/controller/practicehelpcontroller.dart';
import 'package:health_app/views/screens/login/providerlogin/controller/providerlogincontroller.dart';
import 'package:health_app/views/screens/moreinfo/controller/moreinfocontroller.dart';
import 'package:health_app/views/screens/myhealthmatch/controller/myhealthmatchcomtroller.dart';
import 'package:health_app/views/screens/performance/controller/performancecontroller.dart';
import 'package:health_app/views/screens/practiceinformation/controller/practiceinformationcontroller.dart';
import 'package:health_app/views/screens/providermainpage/controller/providermaincontroller.dart';
import 'package:health_app/views/screens/signup/ProviderSignup/controller/providersignupcontroller.dart';
import 'package:health_app/views/screens/signup/MAIN/controller/signupcontroller.dart';
import 'package:health_app/views/screens/signup/confirmemail/controller/confirmemialcontroller.dart';
import 'package:health_app/views/screens/signup/patientsignup/controller/patientsignupcontroller.dart';
import 'package:health_app/views/screens/signup/signupassword/controller/providerpasswordcontroller.dart';
import 'package:health_app/views/screens/welcome/controler/welcomecontroller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => PateintLoginController());
    Get.lazyPut(() => ProviderSignUpController());
    Get.lazyPut(() => ProviderSignUpPasswordController());
    Get.lazyPut(() => ConfirmEmailController());
    Get.lazyPut(() => ProviderLoginController());
    Get.lazyPut(() => PracticeHelpController());
    Get.lazyPut(() => PatientSignupController());
    Get.lazyPut(() => DoctorAvailibiltyController());
    Get.lazyPut(() => DoctorBookingController());
    Get.lazyPut(() => HospitalsController());
    Get.lazyPut(() => MyhealthMatchController());
    Get.lazyPut(() => ProviderMainController());
    Get.lazyPut(() => WelcomeController());
    Get.lazyPut(() => AddNewProviderController());
    Get.lazyPut(() => PracticeInformationController());
    Get.lazyPut(() => MoreInfoController());
    Get.lazyPut(() => PerformanceController());
  }
}
