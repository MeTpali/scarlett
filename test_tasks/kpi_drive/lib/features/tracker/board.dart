import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kpi_drive/di/kpi_di.dart';

import 'task_card.dart';

class Board extends ConsumerWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardState = ref.watch(KpiDi.boardProvider);
    final trackerNotifier = ref.watch(KpiDi.boardProvider.notifier);
    return boardState.map(
      loading: (_) => Center(
        child: CircularProgressIndicator(),
      ),
      error: (error) {
        if (error.message?.info == null) {
          return Center(
            child: Text('Обновите страницу'),
          );
        }
        return Center(
          child: Text(error.message!.info!.join('\n')),
        );
      },
      resolved: (board) {
        return DragAndDropLists(
          axis: Axis.horizontal,
          listWidth: 260,
          listDraggingWidth: 200,
          onItemReorder: trackerNotifier.dragAndDrop,
          onListReorder: (_, __) {},
          listPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: [
            for (final folder in board.folders)
              DragAndDropList(
                header: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  child: Text(
                    'Папка ${folder.folderId}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                canDrag: false,
                children: [
                  for (final task in folder.tasks)
                    DragAndDropItem(
                      child: TaskCard.placeholder(
                        name: task.name,
                      ),
                    ),
                ],
              ),
          ],
          itemDragHandle: DragHandle(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu,
                color: Colors.blueGrey,
              ),
            ),
          ),
          listDecoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          contentsWhenEmpty: Row(
            children: <Widget>[
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 10),
                  child: Divider(),
                ),
              ),
              Text(
                'Empty List',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodySmall!.color,
                    fontStyle: FontStyle.italic),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 40),
                  child: Divider(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  State createState() => _ListTileExample();
}

class _ListTileExample extends State<ListTileExample> {
  late List<DragAndDropList> _contents;

  @override
  void initState() {
    super.initState();

    _contents = List.generate(4, (index) {
      return DragAndDropList(
        canDrag: false,
        header: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Header $index',
              ),
              subtitle: Text('Header $index subtitle'),
            ),
            const Divider(),
          ],
        ),
        footer: Column(
          children: <Widget>[
            const Divider(),
            ListTile(
              title: Text(
                'Footer $index',
              ),
              subtitle: Text('Footer $index subtitle'),
            ),
          ],
        ),
        children: <DragAndDropItem>[
          DragAndDropItem(
            child: ListTile(
              title: Text(
                'Sub $index.1',
              ),
              trailing: const Icon(Icons.access_alarm),
            ),
          ),
          DragAndDropItem(
            child: ListTile(
              title: Text(
                'Sub $index.2',
              ),
              trailing: const Icon(Icons.alarm_off),
            ),
          ),
          DragAndDropItem(
            child: ListTile(
              title: Text(
                'Sub $index.3',
              ),
              trailing: const Icon(Icons.alarm_on),
            ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tiles'),
      ),
      body: DragAndDropLists(
        children: _contents,
        onItemReorder: _onItemReorder,
        onListReorder: _onListReorder,
        listGhost: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Center(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: const Icon(Icons.add_box),
            ),
          ),
        ),
        listPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        contentsWhenEmpty: Row(
          children: <Widget>[
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 10),
                child: Divider(),
              ),
            ),
            Text(
              'Empty List',
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall!.color,
                  fontStyle: FontStyle.italic),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 40),
                child: Divider(),
              ),
            ),
          ],
        ),
        listDecoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }

  _onItemReorder(
      int oldItemIndex, int oldListIndex, int newItemIndex, int newListIndex) {
    setState(() {
      var movedItem = _contents[oldListIndex].children.removeAt(oldItemIndex);
      _contents[newListIndex].children.insert(newItemIndex, movedItem);
    });
  }

  _onListReorder(int oldListIndex, int newListIndex) {
    setState(() {
      var movedList = _contents.removeAt(oldListIndex);
      _contents.insert(newListIndex, movedList);
    });
  }
}
