

class ListPane extends StatelessWidget {
  final List<String> images;
  final int? selected;
  final ValueChanged<int?> onImageTap;
  final bool singleScreen;

  const ListPane({
    Key? key,
    required this.images,
    required this.selected,
    required this.onImageTap,
    required this.singleScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return Container(
          foregroundDecoration: index != selected || singleScreen
              ? null
              : BoxDecoration(
                  border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 4,
                  style: BorderStyle.solid,
                )),
          child: Ink.image(
            image: AssetImage(images[index]),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                onImageTap(index);
              },
            ),
          ),
        );
      },
      itemCount: images.length,
    );
  }
}

class DetailsPane extends StatelessWidget {
  final String? image;

  const DetailsPane({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: image == null
          ? Center(child: Text('Pick an image from the grid.'))
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(image!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(children: [
                Expanded(
                  child: Center(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Icon(Icons.camera, size: 30),
                      ),
                      title: Text('Camera'),
                      subtitle: Text('f/2.0 2.5mm ISO 520'),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Icon(Icons.camera_alt, size: 30),
                    ),
                    title: Text('Device'),
                    subtitle: Text('Surface Duo'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

/// A separate screen that presents the [DetailsPane] inside a [Scaffold].
class DetailsScreen extends StatelessWidget {
  final String image;

  const DetailsScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(title: Text('Image Details')),
        body: DetailsPane(image: image),
      ),
    );
  }
}

/// Route that auto-removes itself if the app spanned horizontally.
class SingleScreenExclusiveRoute<T> extends MaterialPageRoute<T> {
  SingleScreenExclusiveRoute({
    required WidgetBuilder builder,
  }) : super(builder: builder);

  @override
  Widget buildContent(BuildContext context) {
    if (MediaQuery.of(context).hinge?.bounds.top == 0.0) {
      navigator?.removeRoute(this);
    }
    return super.buildContent(context);
  }
}

