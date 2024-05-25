import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget est la racine de votre application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'M208_TP5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Déclarez les TextEditingController pour chaque TextField
  final TextEditingController lgController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  void dispose() {
    // Disposez les contrôleurs lorsque le widget est supprimé
    lgController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Authentification",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre login",
                  labelStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(Icons.person_outline),
                ),
                controller: lgController, // Affectation du contrôleur
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre mot de passe",
                  labelStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                controller: pwdController, // Affectation du contrôleur
                obscureText: true, // Pour masquer le mot de passe
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                // Vous pouvez ajouter la logique pour utiliser lgController et pwdController ici
                print('Login: ${lgController.text}');
                print('Password: ${pwdController.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
