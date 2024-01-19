class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Counter'),
      ),
      body: const Center(
        child: CounterDisplay(),
      ),
      floatingActionButton: const CounterAddButton(),
    );
  }
}

class CounterAddButton extends StatelessWidget {
  const CounterAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: InheritedCounter.of(context).add,
      child: const Icon(Icons.add),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final counter = InheritedCounter.of(context).counter;
    print('build display $counter');
    return Text(
      'Count: ${counter.value}',
      style: theme.textTheme.displaySmall,
    );
  }
}