class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Home(),
      ),
    );
  }
}