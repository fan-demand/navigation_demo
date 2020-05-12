import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({this.tabNo});

  final int tabNo;

  @override
  State<StatefulWidget> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(initialIndex: widget.tabNo ?? 0, length: 4, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Tab 0',
            ),
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
            Tab(
              text: 'Tab 3',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Center(
            child: Text('You are on Tab 0 of Page 1'),
          ),
          Center(
            child: Text('You are on Tab 1 of Page 1'),
          ),
          Center(
            child: Text('You are on Tab 2 of Page 1'),
          ),
          Center(
            child: Text('You are on Tab 3 of Page 1'),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  Page2({this.tabNo});

  final int tabNo;

  @override
  State<StatefulWidget> createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(initialIndex: widget.tabNo ?? 0, length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Tab 0',
            ),
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Center(
            child: Text('You are on Tab 0 of Page 2'),
          ),
          Center(
            child: Text('You are on Tab 1 of Page 2'),
          ),
          Center(
            child: Text('You are on Tab 2 of Page 2'),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  Page3({this.tabNo});

  final int tabNo;

  @override
  State<StatefulWidget> createState() => _Page3State();
}

class _Page3State extends State<Page3> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(initialIndex: widget.tabNo ?? 0, length: 5, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Tab 0',
            ),
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
            Tab(
              text: 'Tab 3',
            ),
            Tab(
              text: 'Tab 4',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Center(
            child: Text('You are on Tab 0 of Page 3'),
          ),
          Center(
            child: Text('You are on Tab 1 of Page 3'),
          ),
          Center(
            child: Text('You are on Tab 2 of Page 3'),
          ),
          Center(
            child: Text('You are on Tab 3 of Page 3'),
          ),
          Center(
            child: Text('You are on Tab 4 of Page 3'),
          ),
        ],
      ),
    );
  }
}
