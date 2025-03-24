import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputForm(),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for Text Fields
  TextEditingController ageController = TextEditingController();
  TextEditingController restingBPController = TextEditingController();
  TextEditingController cholesterolController = TextEditingController();
  TextEditingController oldpeakController = TextEditingController();
  TextEditingController maxHRController = TextEditingController();
  TextEditingController majorVesselsController = TextEditingController();

  // Drop-down variables
  String? sex = 'Male';
  String? chestPainType = 'Typical Angina';
  String? fastingBS = 'Normal';
  String? restingECG = 'Normal';
  String? exerciseAngina = 'No';
  String? stSlope = 'Up';
  String? thalassemia = 'Normal';
  String? heartDisease = 'No';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Data Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // Age
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Age'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
              ),
              
              // Sex
              DropdownButtonFormField<String>(
                value: sex,
                items: ['Male', 'Female']
                    .map((sexOption) => DropdownMenuItem(
                          value: sexOption,
                          child: Text(sexOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    sex = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Sex'),
              ),

              // ChestPainType
              DropdownButtonFormField<String>(
                value: chestPainType,
                items: ['Typical Angina', 'Atypical Angina', 'Non-Anginal Pain', 'Asymptomatic']
                    .map((chestPainOption) => DropdownMenuItem(
                          value: chestPainOption,
                          child: Text(chestPainOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    chestPainType = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Chest Pain Type'),
              ),
              
              // Resting BP
              TextFormField(
                controller: restingBPController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Resting Blood Pressure'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter resting BP';
                  }
                  return null;
                },
              ),

              // Cholesterol
              TextFormField(
                controller: cholesterolController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Cholesterol'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter cholesterol';
                  }
                  return null;
                },
              ),

              // Fasting BS
              DropdownButtonFormField<String>(
                value: fastingBS,
                items: ['Normal', 'Above 120 mg/dl']
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    fastingBS = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Fasting Blood Sugar'),
              ),

              // Resting ECG
              DropdownButtonFormField<String>(
                value: restingECG,
                items: ['Normal', 'Having ST-T Wave Abnormality', 'Left Ventricular Hypertrophy']
                    .map((ecgOption) => DropdownMenuItem(
                          value: ecgOption,
                          child: Text(ecgOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    restingECG = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Resting ECG'),
              ),

              // Max Heart Rate
              TextFormField(
                controller: maxHRController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Max Heart Rate'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter max heart rate';
                  }
                  return null;
                },
              ),

              // Exercise Angina
              DropdownButtonFormField<String>(
                value: exerciseAngina,
                items: ['Yes', 'No']
                    .map((anginaOption) => DropdownMenuItem(
                          value: anginaOption,
                          child: Text(anginaOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    exerciseAngina = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Exercise Angina'),
              ),

              // Oldpeak
              TextFormField(
                controller: oldpeakController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Oldpeak'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Oldpeak';
                  }
                  return null;
                },
              ),

              // ST Slope
              DropdownButtonFormField<String>(
                value: stSlope,
                items: ['Up', 'Flat', 'Down']
                    .map((slopeOption) => DropdownMenuItem(
                          value: slopeOption,
                          child: Text(slopeOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    stSlope = value;
                  });
                },
                decoration: InputDecoration(labelText: 'ST Slope'),
              ),

              // Major Vessels
              TextFormField(
                controller: majorVesselsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Major Vessels (0-3)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number of major vessels';
                  }
                  return null;
                },
              ),

              // Thalassemia
              DropdownButtonFormField<String>(
                value: thalassemia,
                items: ['Normal', 'Fixed Defect', 'Reversible Defect']
                    .map((thalassemiaOption) => DropdownMenuItem(
                          value: thalassemiaOption,
                          child: Text(thalassemiaOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    thalassemia = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Thalassemia'),
              ),

              // Heart Disease
              DropdownButtonFormField<String>(
                value: heartDisease,
                items: ['Yes', 'No']
                    .map((diseaseOption) => DropdownMenuItem(
                          value: diseaseOption,
                          child: Text(diseaseOption),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    heartDisease = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Heart Disease'),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, perform the action (e.g., save data)
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
