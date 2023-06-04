import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _passwordVisible = false;
  bool _isMale = true;
  bool _emailNotifications = false;
  bool _phoneNotifications = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
              maxLength: 50,
            ),
            const SizedBox(height: 12.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Data de Nascimento',
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 12.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Telefone',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 15,
            ),
            const SizedBox(height: 12.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              obscureText: !_passwordVisible,
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Checkbox(
                  value: _isMale,
                  onChanged: (value) {
                    setState(() {
                      _isMale = value!;
                    });
                  },
                ),
                const Text('Masculino'),
                const SizedBox(width: 16.0),
                Checkbox(
                  value: !_isMale,
                  onChanged: (value) {
                    setState(() {
                      _isMale = !value!;
                    });
                  },
                ),
                const Text('Feminino'),
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Switch(
                  value: _emailNotifications,
                  onChanged: (value) {
                    setState(() {
                      _emailNotifications = value;
                    });
                  },
                ),
                const Text('Notificações via E-mail'),
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Switch(
                  value: _phoneNotifications,
                  onChanged: (value) {
                    setState(() {
                      _phoneNotifications = value;
                    });
                  },
                ),
                const Text('Notificações via Telefone'),
              ],
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para cadastrar o usuário
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
