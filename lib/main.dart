import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: Center(
        child: Column(
          children: [
            TDDropdownMenu(
              direction: TDDropdownMenuDirection.down,
              onMenuOpened: (value) {
                print('打开第$value个菜单');
              },
              onMenuClosed: (value) {
                print('关闭第$value个菜单');
              },
              builder: (context) {
                return [
                  TDDropdownItem(
                    label: "全部产品",
                    options: [
                      TDDropdownItemOption(label: '全部产品', value: 'all', selected: true),
                      TDDropdownItemOption(label: '最新产品', value: 'new'),
                      TDDropdownItemOption(label: '最火产品', value: 'hot'),
                    ],
                    onChange: (value) {
                      print('选择：$value');
                    },
                  ),
                  TDDropdownItem(
                    label: "全部产品",
                    options: [
                      TDDropdownItemOption(label: '默认排序', value: 'default', selected: true),
                      TDDropdownItemOption(label: '价格从高到低', value: 'price'),
                    ],
                  ),
                  TDDropdownItem(
                    label: "全部产品",
                    options: [
                      TDDropdownItemOption(label: '默认排序', value: 'default', selected: true),
                      TDDropdownItemOption(label: '价格从高到低', value: 'price'),
                    ],
                  ),
                  TDDropdownItem(
                    label: "全部产品",
                    options: [
                      TDDropdownItemOption(label: '默认排序', value: 'default', selected: true),
                      TDDropdownItemOption(label: '价格从高到低', value: 'price'),
                    ],
                  ),
                ];
              },
            )
          ],
        ),
      ),
    );
  }
}
