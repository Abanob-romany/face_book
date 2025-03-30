import 'package:face_book/main.dart';
import 'package:flutter/material.dart';
import 'package:face_book/ui/home/home.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  String _errorMessage = "";

  // Fake user database
  final List<Map<String, String>> fakeUsers = [
    {"email": "Abanoub", "password": "123"},
    {"email": "user2@example.com", "password": "123456"},
    {"email": "test@gmail.com", "password": "testpass"},
  ];

  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Check if the email and password exist in the fakeUsers list
    bool isValidUser = fakeUsers.any(
      (user) => user["email"] == email && user["password"] == password,
    );

    if (isValidUser) {
      // If login successful, navigate to HomeScreen
      Navigator.pushReplacementNamed(context, Home.routeName);
    } else {
      // Show error message
      setState(() {
        _errorMessage = "Invalid email or password.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/facebook-svgrepo-com (1) 1.png'),
                ),
                SizedBox(height: 62.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: veryLightBlue,
                    filled: true,
                    hintText: 'Mobile Number or Email Address',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    fillColor: veryLightBlue,
                    filled: true,
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: gray, width: 1.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
                if (_errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      _errorMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                SizedBox(height: 40.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _login,
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(blue),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            height: 2.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                InkWell(
                  child: Text(
                    'forgotten password?',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                Spacer(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    side: WidgetStateProperty.all(
                                      BorderSide(color: blue),
                                    ),
                                    backgroundColor: WidgetStateProperty.all(
                                      white,
                                    ),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Create account',
                                    style: TextStyle(
                                      color: blue,
                                      fontSize: 16,
                                      height: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Image(image: AssetImage('assets/Meta Logo.png')),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
