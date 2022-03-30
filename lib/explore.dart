import 'package:flutter/material.dart';

class explore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> images=
    [
      'https://www.google.com/search?q=tourist+places+images&sxsrf=APq-WBu-rECKgn-UpLtC3u2LCAo2_dBU5g:1648647714814&tbm=isch&source=iu&ictx=1&vet=1&fir=wcwFPTrAurBFgM%252C-KEnDZ2XBUVGfM%252C_%253BQsxJzymxBQgmuM%252CNhKmvbHFO1kbMM%252C_%253BQWL4HMf1XIMjCM%252C6mXigZ4WT-LYEM%252C_%253BbF9dIyAk5Vv1AM%252Crm7teYn2uRVy9M%252C_%253BCCyzH_RR80O9IM%252CKobny15qfaDvhM%252C_%253BLjE6HI5rtkAtBM%252Crm7teYn2uRVy9M%252C_%253BMusv38fTBfneHM%252C-KEnDZ2XBUVGfM%252C_%253B20L77qOfDZaPpM%252CiFYS7zTpdw3YXM%252C_%253BaR_geoKoWp1QUM%252CtkhUu1Jq8fdAbM%252C_%253BiFy5hXRfDV1J2M%252CaJKWs-Cuhq2ZIM%252C_%253BKNkrIjoTitmyMM%252CWf8smMzRGUuh_M%252C_%253BNaZQesy_5PZMlM%252CzXksgv197c3wSM%252C_&usg=AI4_-kSy90eXfOKuLtQp_K699BnEZUgWqA&sa=X&ved=2ahUKEwjgtZqr--32AhUJzzgGHcC4CWUQ9QF6BAgCEAE#imgrc=wcwFPTrAurBFgM'

    ];
    // TODO: implement build
    return MaterialApp(
      title: 'Tourism App',
      home: Scaffold(
        appBar: AppBar(title: Text('Explore'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(12, (index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Image.network(images[index],),
              ),
            );
          }
          ),
        ),
      ),
    );
  }
}