import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/porto');
              },
              child: Text('Portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/kontak');
              },
              child: Text('Kontak Saya'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Image.asset(
              'asset/image/wendy.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12)),
            new Text(
              "Nama saya Wendy Mei Ika Nur Ainni, alamat rumah saya di Desa Kenjo Kecamatan Glagah Kab. Banyuwangi. saya berkuliah di Poliwangi Jurusan Teknik Informatika.",
              maxLines: 4,
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 15, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

class PortoFolio extends StatelessWidget {
  final List<String> gambar = [
    "asset/image/mv1.jpg",
    "asset/image/mv5.jpg",
    "asset/image/mv6.jpg"
  ];

  final List<String> sub = [
    'Life Is Still Going On - MV',
    'Rainbow - MV',
    'Chewing Gum - MV'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio saya'),
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                size: 75,
                color: Colors.blueAccent,
              ),
            ),
            Center(
              child: Text("Nama : Wendy Mei Ika Nur Ainni\n"
                  "Nim : 362055401013\n"
                  "Prodi : D3-Teknik Informatika\n"
                  "Email : wendymeiikanurainni@gmail.com"),
            ),
          ],
        ));
  }
}
