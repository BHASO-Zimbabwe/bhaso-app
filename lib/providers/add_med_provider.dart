import 'package:flutter/cupertino.dart';

import '../models/medication.dart';

class AddMedProvider extends ChangeNotifier{

  late Medication med;

  addMed(){
     med = Medication();
     notifyListeners();
     //go n initialise this in frequency page
  }





}