import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';

class Album {
  /*
{
  "albumId": 1,
  "id": 10,
  "title": "beatae et provident et ut vel",
  "url": "https://via.placeholder.com/600/810b14",
  "thumbnailUrl": "https://via.placeholder.com/150/810b14"
}
 */

  final int albumId, id;
  final String title, url, thumbnailUrl;

  Album({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Album.fromJson(Map<String, dynamic> json){
    return Album(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']
    );
  }

}

Future<List<Album>> fetchAlbum() async {
  final response = await http.get("https://jsonplaceholder.typicode.com/albums/1/photos");
  if(response.statusCode == 200){
    return (json.decode(response.body) as List).map((e) => Album.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class AlbumListItem extends StatelessWidget {
  AlbumListItem({this.album}): super(key : ObjectKey(album)) ;
  final Album album;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen(imageUrl: album.url,);
          }));
        },
      leading: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: this.album.thumbnailUrl
      ),
      title: Text(
        this.album.title
      ),
    );
  }
}

class AlbumList extends StatefulWidget {
  AlbumList({Key key}): super(key: key);

  @override
  _AlbumListState createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
  Future<List<Album>> futureAlbums;

  @override
  void initState() {
    super.initState();
    futureAlbums = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Navigation Network'),
      ),
      body: Center(
        child: FutureBuilder<List<Album>>(
          future: futureAlbums,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return ListView(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                children: snapshot.data.map((e) => AlbumListItem(album : e)).toList(),
              );
            }
            else{
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          }
        ),
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              this.imageUrl,
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}


void main(){
  runApp(MaterialApp(
    title: 'List Navigation Network Typical App',
    home: AlbumList()
  ));

}




