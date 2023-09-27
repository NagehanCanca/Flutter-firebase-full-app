
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'characters_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  get charactersList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karakter Seçimi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bir karakter seçin:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // Karakterleri listeleme
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: charactersList.map((character) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Karakter seçildiğinde yapılacak işlemler
                          // Örneğin, seçilen karakteri başka bir sayfaya göndermek için Navigator kullanabilirsiniz.
                          _onCharacterSelected(context, character);
                        },
                        child: Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Image.asset(
                                character.imageAsset,
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              Text(character.name),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCharacterSelected(BuildContext context, Character character) {
    // Seçilen karakter ile yapılacak işlemleri burada tanımlayabilirsiniz.
    // Örneğin, karakteri başka bir sayfaya veya oyunun ilerleyen kısmına yönlendirebilirsiniz.

    // Örnek bir yönlendirme:
    // Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterDetailPage(character: character)));
  }
}

/*@override
  Widget build(BuildContext context) {
    return Container();
  }*/
