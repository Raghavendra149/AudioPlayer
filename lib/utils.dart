import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Utils {
  Widget appBar() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "liked Songs",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget albumImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.height / 3.5,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.6),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(6, 2)),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.9),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(-6, -2),
          )
        ],
        border: Border.all(color: Colors.grey, width: 4),
        borderRadius: BorderRadius.circular(300),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "images/Dil.jpg",
          ),
        ),
      ),
    );
  }

  Widget songName() {
    return Column(
      children: <Widget>[
        Text(
          "Khulke Jeene Ka - Dil Bechara",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Sushant Singh Rajput",
          style: TextStyle(color: Colors.white, fontSize: 14),
        )
      ],
    );
  }

  Widget progressBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
                color: Colors.white,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey[400],
                      Colors.white,
                    ])),
          ),
          Container(
            height: 8,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
                color: Colors.white,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey[800],
                      Colors.white70,
                    ])),
          )
        ],
      ),
    );
  }

  Widget songTime() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "1:24",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              "6:00",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget songsButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(6, 2)),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(-6, -2),
              )
            ],
          ),
          child: Icon(CupertinoIcons.heart_solid),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(6, 2)),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(-6, -2),
              )
            ],
          ),
          child: Icon(
            Icons.fast_rewind,
            size: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(6, 2)),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(-6, -2),
              )
            ],
          ),
          child: FloatingActionButton(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              backgroundColor: Colors.black,
              onPressed: () {
                var audio = AudioCache();
                audio.play('song2.mp3');
              }),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(6, 2)),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(-6, -2),
              )
            ],
          ),
          child: Icon(
            Icons.fast_forward,
            size: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(6, 2)),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(-6, -2),
              )
            ],
          ),
          child: Icon(Icons.repeat_one),
        )
      ],
    );
  }

  Widget endButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.phonelink_setup,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
