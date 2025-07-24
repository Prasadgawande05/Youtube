import 'package:flutter/material.dart';
import 'package:prasad/Forgot.dart';
import 'package:prasad/Account.dart';

class YouTubeLoginScreen extends StatefulWidget {
  const YouTubeLoginScreen({super.key});

  @override
  State<YouTubeLoginScreen> createState() => _YouTubeLoginScreenState();
}

class _YouTubeLoginScreenState extends State<YouTubeLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  bool _obscurePassword = true;

  void login() {
    if (_formKey.currentState!.validate()) {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const Tabs()),
      // );

    }
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Decode base64 image

    return Scaffold(
      appBar: AppBar(title: const Text("Login Screen")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.network(
                    "data:image/png;base64,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"),
                const Text("Sign In", style: TextStyle(fontSize: 40)),
                const Text("Login to Continue", style: TextStyle(fontSize: 20)),
                const SizedBox(height: 20),

                // Email field
                TextFormField(
                  controller: emailCtrl,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    hintText: "Enter your email",
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Email cannot be null";
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Password field
                TextFormField(
                  controller: passwordCtrl,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    hintText: "Enter your password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: _obscurePassword ? Colors.blue : Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Password cannot be null";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()),
                      );
                    },
                    child: const Text("Forgot password?",
                        style: TextStyle(color: Colors.blue)),
                  ),
                ),

                const SizedBox(height: 20),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text("Login",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),

                const SizedBox(height: 20),

                // Create Account link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()),
                        );
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.blue,
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
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("YouTube Home")),
      body: const Center(
        child:
            Text("Welcome to the Tabs screen!", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
