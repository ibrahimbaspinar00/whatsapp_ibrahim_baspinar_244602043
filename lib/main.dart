import 'package:flutter/material.dart';
import 'kisi_ekle_ekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug kaldırır
      title: 'WhatsApp', // Uygulama başlığı
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white), // uygulamanın arkaplanıu beyaz olur
      ),
      home: const MyHomePage(title: 'WhatsApp'), // app bar başlık
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Final Değişkeni değiştirlemez bir kez değer atanabilir 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// tablar arasında geçiş yapmaya yarar
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin { // sekmeler arası geçişi sağlar
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // 4 tane sekme olması anlamına gelir
  }

  // BuildContext App bar alt Kısım

  @override
  Widget build(BuildContext context) {
    return Scaffold( // sayfanın iskeletidir sayfa düzernli durur
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // sohbetler kısmının ayani ana ekranın arka planının rengi
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), //app bar arka plan rengi
        title: Text(
          widget.title,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // appbar whatsapp yazısının rengi
        ),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)), // camera search more_vert iconlarının arkaplan rengi
        actions: [
          // app bar İconları
          IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          
          
          // Sohbetler Sekmesi
          ListView(
            children: const [
              // sohbetler kişi 1 mesaj kısmı
              ListTile(
                leading: CircleAvatar( 
                  backgroundColor: Colors.grey,   // person avatarının arkaplan rengi
                  child: Icon(Icons.person, color: Colors.white),     // person avatarının rengi
                ),
                title: Text('Kişi 1', style: TextStyle(color: Colors.white)),  //kişi 1 yazısı ve yazı rengi
                subtitle: Text( // subtitle alt başlık
                  'Deneme Mesajıdır.',      // kişşinin altında gözükcek mesaj
                  style: TextStyle(color: Colors.grey), // gözükecek mesaj rengi
                ),
                // trailing sağ tarafta gösterir
                trailing: Text('23:00', style: TextStyle(color: Colors.white)),  // sağ tarafta gözüken saat yazısı ve rengi
              ),
              // sohbetler kişi 2 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 2', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('23:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 3 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 3', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('15:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 4 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 4', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('15:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 5 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 5', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('14:00', style: TextStyle(color: Colors.white)),
              ),
                   // sohbetler kişi 6 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 6', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('13:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 7 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Kişi 7', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('12:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 8 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 1', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('19:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 9 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 2', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('17:30', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 10 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 3', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('17:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 11 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 4', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('16:00', style: TextStyle(color: Colors.white)),
              ),
              // sohbetler kişi 12 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 5', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('15:00', style: TextStyle(color: Colors.white)),
              ),
                 // sohbetler kişi 13 mesaj kısmı
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.groups, color: Colors.white),
                ),
                title: Text('Grup 6', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Deneme Mesajıdır.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text('14:00', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),

          
          
          // Güncellemeler Sekmesi
          ListView(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/21.jpg'),
                  backgroundColor: Colors.green,
                ),
                title: Text(
                  'Durum Güncellemesi', // kullanıcın kendisinin durum ekleme kısmı
                  style: TextStyle(color: Colors.white), // durum güncellemesi yazı rengi
                ),
                subtitle: Text( // alt kısıma yazı yazar
                  'Güncelleme Yok', // alt kısımmdaki mesaj
                  style: TextStyle(color: Colors.grey), // alt kısımdaki mesajın rengi
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),  // üst alt ve soldan 16 boşluk bırakır
                child: Text(
                  'Son Güncellemeler', // son güncellemeler yazısı
                  style: TextStyle(color: Colors.white, fontSize: 16), // yazının rengi ve büyüklüğü
                ),
              ),
              // güncellemeler kısmı kişi 1 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/32.jpg'),
                  backgroundColor: Colors.blue,
                ),
                title: Text('Kişi 1', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 00:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 2
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/21.jpg'),
                  backgroundColor: Colors.green,
                ),
                title: Text('Kişi 2', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 12:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 3
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/76.jpg'),
                  backgroundColor: Colors.red,
                ),
                title: Text('Kişi 3', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 14:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),  // üst alt ve soldan 16 boşluk bırakır
                child: Text(
                  'Görüntülenen Güncellemeler', // görülen güncellemeler mesajı
                  style: TextStyle(color: Colors.white, fontSize: 16), // yazısının rengi ve boyutu
                ),
              ),
              // güncellemeler kısmı kişi 4

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/66.jpg'),
                  backgroundColor: Colors.red,
                ),
                title: Text('Kişi 4', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 16:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 5
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/68.jpg'),
                  backgroundColor: Colors.purple,
                ),
                title: Text('Kişi 5', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 18:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 6
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/76.jpg'),
                  backgroundColor: Colors.orange,
                ),
                title: Text('Kişi 6', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 20:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 7
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/32.jpg'),
                  backgroundColor: Colors.blue,
                ),
                title: Text('Kişi 7', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 22:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 8
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/21.jpg'),
                  backgroundColor: Colors.green,
                ),
                title: Text('Kişi 8', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 23:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // güncellemeler kısmı kişi 9
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/76.jpg'),
                  backgroundColor: Colors.red,
                ),
                title: Text('Kişi 9', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 23:30',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),

          // Topluluklar Sekmesi
          ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0), // üst alt ve soldan 16 boşluk bırakır
                child: Text(
                  'Kanallar', // topluluklar kısmı kanallar yazısı 
                  style: TextStyle(color: Colors.white, fontSize: 16), // kanallar yazsının text ayarları
                ),
              ),
              // Kanallar kısmının resimleri pubspec.yaml kısmına ekledim Fotograflar fake fotoğraflardır
              // 1. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/assets/images/giresununi.png', // resim çekme
                  ),
                ),
                title: Text(
                  'Şebinkarahisar MYO', // resimin kanallar kısmında görükecek ismi
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text( // alt satırı
                  'Bugün 12:00', // alt satırındaki mesaj
                  style: TextStyle(color: Colors.grey), // alt satırdaki mesaj rengi
                ),
              ),
              // 2. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/assets/images/instagram.png',
                  ),
                ),
                title: Row(
                  children: [
                    Text('İnstagram', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 6), // Yazı ikon arasında boşluk
                    Icon(Icons.verified, color: Colors.blue, size: 18), // tik iconu ve rengini ayarlama ve boyutu
                  ],
                ),
                subtitle: Text(
                  'Bugün 18:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 3. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/whatsapp.png'),
                ),
                title: Row(
                  children: [
                    Text('WhatsApp', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 6), // Yazı ikon arasında boşluk
                    Icon(Icons.verified, color: Colors.blue, size: 18),
                  ],
                ),
                subtitle: Text(
                  'Bugün 18:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 4. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/besiktas.jpg'),
                ),
                title: Row(
                  children: [
                    Text('Beşiktaş JK', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 6),
                    Icon(Icons.verified, color: Colors.blue, size: 18),
                  ],
                ),
                subtitle: Text(
                  'Bugün 18:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 5. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/shiftDelete.jpg'),
                ),
                title: Row(
                  children: [
                    Text('Shift Delete', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 6),
                    Icon(Icons.verified, color: Colors.blue, size: 18),
                  ],
                ),
                subtitle: Text(
                  'Bugün 20:01',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 6. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/btkAkademi.jpg'),
                ),
                title: Text('BTK Akademi', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 22:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 7. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/bpt.jpg'),
                ),
                title: Text('BPT', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 23:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 8. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/migros.jpg'),
                ),
                title: Text('Migros', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 23:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // 9. kanal 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/trendyol.jpg'),
                ),
                title: Text('Trendyol', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'Bugün 23:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),

          // Aramalar Sekmesi
          ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0), // üst alt sol 16 birim boşluk
                child: Text(
                  'Favoriler', // favoriler yazısı 
                  style: TextStyle(color: Colors.white, fontSize: 16), //Yazı rengi boyutu
                ),
              ),
              // arama kısmı kişi 1 
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/21.jpg'), // resim çekme
                ),
                title: Text('Kişi 1', style: TextStyle(color: Colors.white)), // kişi 1 yazı rengi
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),//subtitle alt satır arama yazısının rengi
                trailing: Icon(Icons.videocam, color: Colors.green), // trailing sağa sabitler  vidocam iconunun rengi
              ),
              // arama kısmı kişi 2
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/76.jpg'),
                ),
                title: Text('Kişi 2', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.videocam, color: Colors.green),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0), // üst alt sol boşluk bırakır
                child: Text(
                  'En Son', // yazı ekler 
                  style: TextStyle(color: Colors.white, fontSize: 16),  //yazı text ayarları
                ),
              ),
              // arama kısmı kişi 3
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/68.jpg'),
                ),
                title: Text('Kişi 3', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.call, color: Colors.green),
              ),
              // arama kısmı kişi 4
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/66.jpg'),
                ),
                title: Text('Kişi 4', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.videocam, color: Colors.green),
              ),
              // arama kısmı kişi 5
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/32.jpg'),
                ),
                title: Text('Kişi 5', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.videocam, color: Colors.green),
              ),
              // arama kısmı kişi 6
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/21.jpg'),
                ),
                title: Text('Kişi 6', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.call, color: Colors.green),
              ),
              // arama kısmı kişi 7
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/76.jpg'),
                ),
                title: Text('Kişi 7', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.videocam, color: Colors.green),
              ),
              // arama kısmı kişi 8
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/68.jpg'),
                ),
                title: Text('Kişi 8', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.call, color: Colors.green),
              ),
              // arama kısmı kişi 9
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/32.jpg'),
                ),
                title: Text('Kişi 9', style: TextStyle(color: Colors.white)),
                subtitle: Text('Arama', style: TextStyle(color: Colors.grey)),
                trailing: Icon(Icons.videocam, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
      // alt bottomNavigationBar Kısmı
      bottomNavigationBar: Material(
        color: const Color.fromARGB(255, 0, 0, 0), //butoomnavigationbar rengi 
        child: TabBar(
          controller: _tabController,
          indicatorColor: const Color.fromARGB(255, 255, 255, 255), // Alt çizgi rengi
          tabs: const [
            Tab(icon: Icon(Icons.chat, color: Color.fromARGB(255, 255, 255, 255)), text: 'Sohbetler'), //sohbetler iconunun rengi ve iconu
            Tab(
              icon: Icon(Icons.update, color: Colors.white), // güncellemeler kısmı iconu ve icon rengi
              text: 'Güncellemeler',  
            ),
            Tab(
              icon: Icon(Icons.groups, color: Colors.white), // topluluklar kısmı iconu ve icon rengi
              text: 'Topluluklar',
            ),
            Tab(icon: Icon(Icons.call, color: Colors.white), text: 'Aramalar'), // aramalar kısmı iconu ve icon rengi
          ],
        ),
      ),

      // kişi ekleme butonuna bastığımızda bizi göndereceği sayfa
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => KisiEkleEkrani()),
          );
        },
        tooltip: 'Kişi Seç',
        backgroundColor: const Color.fromARGB(255, 69, 140, 72), // buton rengi
        foregroundColor: Colors.white, //icon rengi
        child: const Icon(Icons.add_comment), //İcon
      ),
    );
  }
}
