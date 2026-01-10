import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class CrashAnalyticsDemoScreen extends StatelessWidget {
  const CrashAnalyticsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crash Analytics Demo"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Test Crashlytics Integration",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),

              // BUTTON 1: Force a Fatal Crash
              // Use this to test if your setup is working.
              // NOTE: The app must be restarted manually after clicking this to send the report.
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                icon: const Icon(Icons.error_outline),
                onPressed: () {
                  FirebaseCrashlytics.instance.crash();
                },
                label: const Text("Force Fatal Crash (App will close)"),
              ),
              const SizedBox(height: 20),

              // BUTTON 2: Record a Non-Fatal Error
              // Use this for handled exceptions (try/catch) that you want to track
              // without crashing the app.
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                icon: const Icon(Icons.bug_report),
                onPressed: () {
                  try {
                    throw Exception("This is a custom handled exception!");
                  } catch (e, stack) {
                    // Record the error without crashing
                    FirebaseCrashlytics.instance.recordError(
                      e,
                      stack,
                      reason: 'User tapped the non-fatal button',
                      fatal: false,
                    );

                    // Add custom logs to the report to help debug context
                    FirebaseCrashlytics.instance.log(
                      "Custom log: Non-fatal error triggered by user.",
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Non-fatal error recorded! Check console in ~5 mins.',
                        ),
                      ),
                    );
                  }
                },
                label: const Text("Record Non-Fatal Error"),
              ),

              const SizedBox(height: 20),

              // BUTTON 3: Trigger Async Error
              // Tests the PlatformDispatcher logic to ensure background errors are caught.
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                icon: const Icon(Icons.timer),
                onPressed: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Async error will trigger in 1 second...'),
                    ),
                  );
                  // This error happens asynchronously and wouldn't be caught
                  // by FlutterError.onError usually
                  Future.delayed(const Duration(seconds: 1), () {
                    throw Exception("Async failure test (PlatformDispatcher)!");
                  });
                },
                label: const Text("Trigger Async Exception"),
              ),

              const SizedBox(height: 20),

              // BUTTON 3: Trigger Async Error
              // Tests the PlatformDispatcher logic to ensure background errors are caught.
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                icon: const Icon(Icons.verified),
                onPressed: () async {
                  FirebaseCrashlytics.instance.recordError(
                    Exception("Jong mean Reason"),

                    StackTrace.fromString("Jong mean Reason"),
                    reason: {
                      "results": [
                        {
                          "gender": "female",
                          "name": {
                            "title": "Miss",
                            "first": "Jennie",
                            "last": "Nichols",
                          },
                          "location": {
                            "street": {"number": 8929, "name": "Valwood Pkwy"},
                            "city": "Billings",
                            "state": "Michigan",
                            "country": "United States",
                            "postcode": "63104",
                            "coordinates": {
                              "latitude": "-69.8246",
                              "longitude": "134.8719",
                            },
                            "timezone": {
                              "offset": "+9:30",
                              "description": "Adelaide, Darwin",
                            },
                          },
                          "email": "jennie.nichols@example.com",
                          "login": {
                            "uuid": "7a0eed16-9430-4d68-901f-c0d4c1c3bf00",
                            "username": "yellowpeacock117",
                            "password": "addison",
                            "salt": "sld1yGtd",
                            "md5": "ab54ac4c0be9480ae8fa5e9e2a5196a3",
                            "sha1": "edcf2ce613cbdea349133c52dc2f3b83168dc51b",
                            "sha256":
                                "48df5229235ada28389b91e60a935e4f9b73eb4bdb855ef9258a1751f10bdc5d",
                          },
                          "dob": {
                            "date": "1992-03-08T15:13:16.688Z",
                            "age": 30,
                          },
                          "registered": {
                            "date": "2007-07-09T05:51:59.390Z",
                            "age": 14,
                          },
                          "phone": "(272) 790-0888",
                          "cell": "(489) 330-2385",
                          "id": {"name": "SSN", "value": "405-88-3636"},
                          "picture": {
                            "large":
                                "https://randomuser.me/api/portraits/men/75.jpg",
                            "medium":
                                "https://randomuser.me/api/portraits/med/men/75.jpg",
                            "thumbnail":
                                "https://randomuser.me/api/portraits/thumb/men/75.jpg",
                          },
                          "nat": "US",
                        },
                      ],
                      "info": {
                        "seed": "56d27f4a53bd5441",
                        "results": 1,
                        "page": 1,
                        "version": "1.4",
                      },
                    },
                  );
                  // throw Exception("Test leng leng");
                },
                label: const Text("Trigger Async Exception"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
