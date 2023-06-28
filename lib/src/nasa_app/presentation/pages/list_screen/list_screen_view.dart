import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_screen_controller.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    Provider.of<ListScreenController>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ListScreenController>(
        builder: (context, screenController, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("ListScreen"),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: screenController.isLoading
                  ? const LinearProgressIndicator()
                  : const SizedBox.shrink()),
        ),
        body: screenController.apodList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                controller: screenController.scrollController,
                itemCount: screenController.apodList.length + 1,
                itemBuilder: (context, index) {
                  if (index < screenController.apodList.length) {
                    final apod = screenController.apodList[index];
                    return ListTile(
                      title: Text(apod.title),
                      trailing: Text(apod.formattedDate),
                      onTap: () =>
                          screenController.goToDetailsScreen(context, apod),
                    );
                  } else {
                    return const SizedBox(
                      height: 40.0,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                },
              ),
      );
    });
  }
}
