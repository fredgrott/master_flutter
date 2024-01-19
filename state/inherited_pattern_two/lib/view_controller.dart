class ViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        final MyModel model = ModelBinding.of<MyModel>(context);
        ModelBinding.update<MyModel>(context, MyModel(value: model.value + 1));
      },
      child: Text('Hello World ${ModelBinding.of<MyModel>(context).value}'),
    );
  }
}