import 'package:flutter/material.dart';
class AutofillDemo extends StatefulWidget {
  const AutofillDemo({Key? key}) : super(key: key);

  @override
  _AutofillDemoState createState() => _AutofillDemoState();
}

class _AutofillDemoState extends State<AutofillDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medication Reports'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    const Text('Please Enter details  '),
                    TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Diabetes mellitus / Cancer',
                        labelText: 'Disease diagnosed',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Stage 1 / Stage 3',
                        labelText: 'Severity',
                      ),
                      autofillHints: const [AutofillHints.familyName],
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Father / Mother / Null',
                        labelText: 'Family History ',
                      ),
                      autofillHints: [AutofillHints.email],
                    ),
                    const TextField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '80 - 120',
                        labelText: 'Blood Pressure Levels',
                      ),
                      autofillHints: [AutofillHints.telephoneNumber],
                    ),
                    const TextField(
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'dust / pollen / null',
                        labelText: 'Allergy ',
                      ),
                      autofillHints: [AutofillHints.streetAddressLine1],
                    ),
                    const TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '95',
                        labelText: 'Oxygen Saturation (SpO2)',
                      ),
                      autofillHints: [AutofillHints.postalCode],
                    ),
                    const TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Sore throat / Null',
                        labelText: 'Symptoms of any other disease',
                      ),
                      autofillHints: [AutofillHints.countryName],
                    ),

                  ].expand(
                        (widget) => [
                      widget,
                      const SizedBox(
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}