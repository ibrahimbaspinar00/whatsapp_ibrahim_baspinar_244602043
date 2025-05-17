import 'package:flutter/material.dart';

class KisiEkleEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // sayfanın çerçevesi
      appBar: AppBar(
        backgroundColor: Colors.black, // appbar rengi
        title: Text('Kişi Seç', style: TextStyle(color: Colors.white)), //appbar texti ve rengi
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)), // appbarı icon rengi
        actions: [ //appbarın İconları
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), //ana sayfa arkaplanı
      body: ListView(
        children: [
          //yeni grup kısmı
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green, // iconun arkaplan rengi 
              child: Icon(Icons.group_add, color: Colors.black), //İcon ve icon rengi
            ),
            title: Text('Yeni Grup', style: TextStyle(color: Colors.white)), // yazı ve rrenk
          ),
          SizedBox(height: 20), // 20 pixsel boşluk
          Padding(
            padding: const EdgeInsets.only(right: 35.0), // QR'a Sağdan 35 birim boşluk ekler
            // yeni kişi kısmı 
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green, //iconun arkaplan rengi
                child: Icon(Icons.person_add_alt_1, color: Colors.black), // icon ve icon rengi
              ),
              title: Text('Yeni Kişi', style: TextStyle(color: Colors.white)), // yeni kişi yazısı ve yazı rengi
              trailing: Icon(Icons.qr_code, color: Colors.white),  //qr iconu ve rengi trailing sağ tarafa sabitler 
            ),
          ),
          SizedBox(height: 20), // yeni kişi ve yeni topluluk arasındaki boşluk
          //yeni topluluk kısmı
          ListTile( 
            leading: CircleAvatar(
              backgroundColor: Colors.green, // yeni topluluk icon arkaplan rerngi
              child: Icon(Icons.groups, color: Colors.black), //icon  ve icon rengi
            ),
            title: Text(
              'Yeni Topluluk',
              style: TextStyle(color: Colors.white), //yeni topluluk yazı rengi
            ),
          ),
          SizedBox(height: 10), // yeni topluluk ve whatsapptaki kişiler arasındaki boşluk
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0), // üst alt sol boşluk
            child: Text(
              'WhatsApp\'taki Kişiler', // text
              style: TextStyle(color: Colors.grey, fontSize: 16),//text rengi
            ),
          ),
          // kişi seç siz
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('İbrahim Başpınar (Siz)', style: TextStyle(color: Colors.white)),
            subtitle: Text('Kendinize mesaj gönderin', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 1
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 1', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 2
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 2', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 3
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 3', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 4
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 4', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 5
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 5', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 6
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 6', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 7
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 7', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 8
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 8', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
          // kişi seç kişi 9
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('Kişi 9', style: TextStyle(color: Colors.white)),
            subtitle: Text('Biyografi', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}