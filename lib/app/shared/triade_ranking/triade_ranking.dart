import 'package:flutter/material.dart';
import 'package:flutter_desafio_ranking/app/modules/models/usuario_model.dart';
import 'package:flutter_desafio_ranking/app/shared/components/custom_circle_avatar_widget.dart';

class TriadeRanking extends StatelessWidget {
  final UsuarioModel first;
  final UsuarioModel second;
  final UsuarioModel third;

  const TriadeRanking({Key key, this.first, this.second, this.third})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .55,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3 - 80,
          top: 50,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "2",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_up,
                color: Color(0xff34EBBF),
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                size: 100,
                image: first.picture,
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3 + 100,
          top: 50,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "3",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                size: 100,
                image: first.picture,
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "1",
                style: TextStyle(color: Colors.white),
              ),
              Image.network(
                  "https://clipart.info/images/ccovers/1495903284crown-png-cartoon-image-clip-art-kid.png", height: 48,),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                noGlow: false,
                size: 120,
                image: first.picture,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
