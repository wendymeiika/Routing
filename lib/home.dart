import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.account_circle,
              text: 'Profil',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              }),
          _drawerItem(
              icon: Icons.archive,
              text: 'Portofolio',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Portofolio()),
                );
              }),
          _drawerItem(
              icon: Icons.contact_page,
              text: 'Contact Us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              "Keterangan",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              }),
          _drawerItem(
              icon: Icons.collections,
              text: 'Galery',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galery()),
                );
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.pink[700]),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("asset/image/wendy.jpg"), fit: BoxFit.cover),
    ),
    accountName: Text('Wendy Mei Ika Nur Ainni'),
    accountEmail: Text('wendymeiikanurainni@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Contact", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Name", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Email", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Phone", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: Color(0xff333333),
                    onPressed: () {},
                    child: Text("SUBMIT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Galery extends StatelessWidget {
  final List<String> foto = [
    "asset/image/mv1.jpg",
    "asset/image/mv5.jpg",
    "asset/image/mv6.jpg",
  ];

  final List<String> sub = [
    'NCT Dream Renjun dikenal sebagai salah satu member NCT yang paling estetik',
    'NCT Dream Jeno merupakan salah satu member NCT yang kehadirannya sudah dikenal sejak ia masih remaja.',
    'NCT Dream Haechan diketahui sebagai salah satu idol yang memiliki otak yang cerdas dan kreatif',
    'NCT Dream Jaemin Paras Jaemin yang menawan ini selalu bisa mencuri perhatian para NCTzen',
    'NCT Dream Chonle dikenal sebagai Chenle, adalah seorang penyanyi, penulis lagu, penari dan pemeran Tiongkok yang berbasis di Seoul, Korea Selatan.',
    'NCT Dream Jisung seorang penyanyi Korea Selatan yang berada di bawah naungan SM Entertainment.',
    'NCT Dream Mark Mark Lee, lebih dikenal dengan nama Mark adalah rapper, dancer, dan penyanyi berkebangsaan Kanada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galery"),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
        ),
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black)),
            ),
          );
        },
      ),
    );
  }
}

class musik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Text(
              "Musik",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Icon(
              Icons.audiotrack,
              size: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portofolio"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Image.asset(
            'asset/image/ps1.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps2.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps3.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps4.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps5.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps6.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps7.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/ps8.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profil"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            new Image.asset(
              'asset/image/wendy.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15)),
            Center(
              child: Text(
                "Nama               : Wendy Mei Ika Nur Ainni\n"
                "Nim                : 362055401013\n"
                "Program Studi      : Teknik Informatika\n"
                "Jenis Kelamin      : Perempuan\n",
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ));
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            "INFORMATION\n\n,"
            "LOREM\n"
            "(Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id iaculis sapien, ac bibendum dolor. Suspendisse rutrum mauris est, imperdiet congue dui suscipit nec. Suspendisse potenti. Vestibulum consectetur faucibus lacus, volutpat rhoncus neque dapibus a. Nunc consectetur nibh dui, sed semper massa consequat non. Cras lobortis molestie velit, sit amet aliquet magna accumsan a. Aliquam mollis eros at nisl luctus interdum et luctus sapien. Aliquam sed vestibulum nulla, eu porttitor ante. Aliquam turpis tellus, vestibulum ut posuere id, cursus eget neque. Etiam malesuada ligula odio, nec egestas leo bibendum vel. Phasellus iaculis nisi nulla, id tempor dolor porttitor vulputate. Donec in mauris porttitor, congue ipsum vitae, porta velit.)\n",
          ),
        ),
      ]),
    );
  }
}

class gambar extends StatelessWidget {
  final List<String> foto = [
    "asset/image/ps9.jpeg",
    "asset/image/ps10.jpeg",
    "asset/image/ps11.jpeg",
    "asset/image/ps12.jpeg"
  ];

  final List<String> sub = [
    'DORAEMON',
    'HAIKYUU',
    'SUBASA',
    'NARUTO'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GALERI", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
