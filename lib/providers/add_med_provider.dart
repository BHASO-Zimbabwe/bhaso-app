import 'package:flutter/cupertino.dart';

import '../models/medication.dart';

class AddMedProvider extends ChangeNotifier{

  late Medication med;

  Add_Med(){
     med = Medication();
  }




}