import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:learn1/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

final textUsername = TextEditingController();
final textPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyStatefulWidget(),
    );
  }
}
// class RowColunm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/33576285?v=4'),
//             ),
//             Padding(padding: EdgeInsets.all(2.0),),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Text('Family Day',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Text('Family Day ',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              constraints: BoxConstraints(
                maxWidth: 600,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 30.0),
                ],
              ),
              child: Form(
                key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  Row(
                    children: <Widget>[

                      const SizedBox(width: 10.0),
                      Expanded(
                        child: TextFormField(

                          controller: MyApp().textUsername,
                          decoration: InputDecoration(
                            hintText: 'Enter username',
                            alignLabelWithHint: true,
                            icon: Icon(
                              Icons.person,
                              color: Colors.blue,

                            ),
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12.0),
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty) {
                              return 'Please enter your username';
                            } else if (value.length < 3) {
                              return 'Username must be at least 3 characters';
                            } else {
                              return null;
                            }
                          }
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: TextFormField(
                          controller: MyApp().textPassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                            hintText: 'Enter password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12.0),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            } else {
                              return null;
                            }
                          }
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Perform login action
                          print("Username: ${MyApp().textUsername.text}");
                          print("Password: ${MyApp().textPassword.text}");
                        } else {
                          // Show error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please fill all fields')),
                          );
                        }
                      },
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            decorationColor: Colors.purple,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            decorationThickness: 2.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  final formKey = GlobalKey<FormState>();

  final textFirstName = TextEditingController();
  final textLastName = TextEditingController();
  final textEmail = TextEditingController();
  final textPhoneNumber = TextEditingController();
  final textNewPassword = TextEditingController();
  final textConfirmPassword = TextEditingController();

  Future<void> signUp() async {
    if (formKey.currentState!.validate()) {
      try {
        final userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: textEmail.text.trim(),
          password: textNewPassword.text.trim(),
        );
        final uid = userCredential.user!.uid;

        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'firstName': textFirstName.text.trim(),
          'lastName': textLastName.text.trim(),
          'email': textEmail.text.trim(),
          'phone': textPhoneNumber.text.trim(),
          'createdAt': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Sign Up Successful')),
        );
      } on FirebaseAuthException catch (e) {
        print("FirebaseAuthException: ${e.code} - ${e.message}"); // <-- ADD THIS

        String message = 'Register failed';
        if (e.code == 'email-already-in-use') {
          message = 'Email is already in use';
        } else if (e.code == 'weak-password') {
          message = 'Password is too weak';
        } else if (e.code == 'invalid-email') {
          message = 'Invalid email address';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
    }
  }


//   @override
//   Widget build(BuildContext context){
//
//   }
//
//   Widget build(BuildContext context){
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       resizeToAvoidBottomInset: true,
//       body: Center(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
//             child: Container(
//               padding: EdgeInsets.all(20),
//               constraints: BoxConstraints(
//                 maxWidth: 600,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15.0),
//                 boxShadow: const [
//                   BoxShadow(color: Colors.grey, blurRadius: 30.0),
//                 ],
//               ),
//              child: Form(
//                key: formKey,
//              child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                children: <Widget>[
//                 Container(
//                   alignment: Alignment.centerLeft,
//                  child: IconButton(onPressed:(){
//                    Navigator.pop(context);
//                  },
//                      icon: Icon(
//                  Icons.arrow_back,
//                    color: Colors.blue,
//                    size: 30.0,
//                      ),
//                  ),
//                  ),
//                   Text('Sign Up',
//                    style : TextStyle(
//                    fontSize: 28.0,
//                    color: Colors.blueAccent,
//                    fontWeight: FontWeight.bold,
//                  ),
//                  ),
//               SizedBox(height: 40.0),
//                 Row(
//                   children:<Widget> [
//
//                 SizedBox(width: 10.0),
//                 Expanded(
//                   child: TextFormField(
//                     controller: textFirstName,
//                     decoration: InputDecoration(
//                       hintText: 'Enter First Name',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                     ),
//                     validator : (value){
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your first name';
//                       } else if (value.length < 2) {
//                         return 'First name must be at least 2 characters';
//                       } else {
//                         return null;
//                       }
//                     }
//                 ),
//             ),
//               ],
//               ),
//                  SizedBox(height: 20),
//                  Row(
//                    children: [
//                      SizedBox(width: 10,),
//                      Expanded(
//                        child: TextFormField(
//                          controller: textLastName,
//                          decoration: InputDecoration(
//                            hintText: 'Enter Last Name',
//                            border: OutlineInputBorder(
//                              borderRadius: BorderRadius.circular(10.0),
//                            ),
//                            contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                          ),
//                          validator: (value){
//                            if(value == null || value.isEmpty){
//                              return 'Please enter your last name';
//                            }
//                            else if(value.length < 2){
//                              return 'Last name must be at least 2 characters';
//                            }
//                            else {
//                              return null;
//                            }
//                          }
//
//                      ),
//             ),
//                    ],
//                  ),
//                  SizedBox(height: 20),
//                  Row(
//                    children:<Widget> [
//                      SizedBox(width: 10),
//                      Expanded(
//                        child: TextFormField(
//                           controller: textEmail,
//                          decoration: InputDecoration(
//                            hintText: 'Enter Email',
//                            border: OutlineInputBorder(
//                              borderRadius: BorderRadius.circular(10.0),
//                            ),
//                            contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                          ),
//                          validator: (value){
//                             if(value== null || value.isEmpty){
//                               return 'Please enter your email';
//                             }
//                             else if(!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)){
//                               return 'Please enter a valid email address';
//                             }
//                             else {
//                               return null;
//                             }
//                          }
//                        ),
//
//                      ),
//                    ],
//                  ),
//                   SizedBox(height: 20),
//                  Row(
//                    children: <Widget>[
//                       SizedBox(width: 10),
//                      Expanded(
//                        child: TextFormField(
//                          controller: textPhoneNumber,
//                          keyboardType: TextInputType.phone,
//                          decoration: InputDecoration(
//                            hintText: 'Enter Phone Number',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                          ),
//                           validator: (value){
//                             if(value == null || value.isEmpty){
//                               return 'Please enter your phone number';
//                             }
//                             else if(!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)){
//                               return 'Please enter a valid phone number';
//                             }
//                             else {
//                               return null;
//                             }
//                           }
//                        ),
//                      ),
//
//                    ],
//                  ),
//                   SizedBox(height: 20),
//                      // ...your password input field here
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: 11),
//                       Expanded(
//                         child: TextFormField(
//                           controller: textNewPassword,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             hintText: 'Enter Password',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                           ),
//                           validator: (value){
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter your password';
//                             } else if (value.length < 6) {
//                               return 'Password must be at least 6 characters';
//                             } else {
//                               return null;
//                             }
//                           },
//                         ),
//                       ),
//
//             ],
//                   ),
//
//                  SizedBox(height: 25),
//                  Row(
//                    children: <Widget>[
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: TextFormField(
//                           controller:  textConfirmPassword,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             hintText: 'Confirm Password',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
//                           ),
//                           validator : (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please confirm your password';
//                             }
//                             else if (value != textNewPassword.text) {
//                               return 'Passwords do not match';
//                             }
//                             else {
//                               return null;
//                             }
//                           },
//                         ),
//                       ),
//
//                    ],
//                  ),
//                  SizedBox(height: 25),
//                  SizedBox(
//                    width: double.infinity,
//                    child: Material(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10.0),
//                       child: MaterialButton(
//                         onPressed: () {
//                           if (formKey.currentState!.validate()) {
//                             print("Form is valid, submit now");
//                           }
//                         },
//                         padding: EdgeInsets.symmetric(vertical: 15.0),
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                    ),
//                  ),
//                  SizedBox(height: 3),
//                ],
//              ),
//             ),
//           ),
//       ),
//       ),
//     );
//   }
//
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              _buildTextField(textFirstName, "First Name"),
              _buildTextField(textLastName, "Last Name"),
              _buildEmailField(),
              _buildPhoneField(),
              _buildPasswordField(textNewPassword, "New Password"),
              _buildConfirmPasswordField(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: signUp,
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $hint';
          } else if (value.length < 2) {
            return '$hint must be at least 2 characters';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildEmailField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: textEmail,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
              .hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPhoneField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: textPhoneNumber,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your phone number';
          } else if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
            return 'Please enter a valid phone number';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordField(TextEditingController controller, String hint) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $hint';
          } else if (value.length < 6) {
            return '$hint must be at least 6 characters';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildConfirmPasswordField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: textConfirmPassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please confirm your password';
          } else if (value != textNewPassword.text) {
            return 'Passwords do not match';
          }
          return null;
        },
      ),
    );
  }
}