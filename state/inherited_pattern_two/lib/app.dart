class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ModelBinding<MyModel>(
        initialModel: const MyModel(),
        child: Scaffold(
          body: Center(
            child: ViewController(),
          ),
        ),
      ),
    );
  }
}