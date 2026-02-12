// Main entry point for the Survivor Shooter game

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survivor Shooter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survivor Shooter'),
        ),
        body: Center(
          child: Text('Welcome to Survivor Shooter!'),
        ),
      ),
    );
  }
}