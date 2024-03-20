import 'package:flutter/material.dart';
import 'package:uribe0418/pantallas0418/panel0418/widgets0418/item_productos.dart';

class PanelPantalla0418 extends StatelessWidget {
  const PanelPantalla0418({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff75a9c1),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/UribeV128/Img_iOS/main/loguito.PNG"),
              ),
            )
          ],
          title: Text('Neutrogena Uribe 0418',
              style: TextStyle(color: Color(0xffffffff))),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Que quieres ver",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.amber)),
              ),
            ),
            Container(
              height: 180,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/UribeV128/Img_iOS/main/neufondo.PNG"))),
            ),
            ListTile(
              title: Text("Top de Productos"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) Itemproductos()],
            ))
          ],
        ));
  }
}
