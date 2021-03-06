import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {"/secundaria": (context) => TelaSecundaria(valor: "")},
    debugShowCheckedModeBanner: false,
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaSecundaria(
                              valor: "Anderson",
                            )));
              },
              child: Text("ir para a segunda tela "),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/secundaria");
              },
              child: Text("Metedo dois"),
            )
          ],
        ),
      ),
    );
  }
}
