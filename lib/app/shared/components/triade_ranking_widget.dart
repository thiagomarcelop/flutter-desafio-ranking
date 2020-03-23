import 'package:flutter/material.dart';
import 'package:flutter_desafio_ranking/app/modules/models/usuario_model.dart';

import 'custom_circle_avatar_widget.dart';

class TriadeRankingWidget extends StatelessWidget {
  final UsuarioModel first;
  final UsuarioModel second;
  final UsuarioModel third;

  const TriadeRankingWidget({Key key, this.first, this.second, this.third})
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
          top: 40,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/silver-medal.png",
                height: 48,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatarWidget(
                usuario: second,
                size: 100,
                image: second.picture,
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3 + 100,
          top: 40,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/bronze-medal.png",
                height: 48,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatarWidget(
                usuario: third,
                size: 100,
                image: third.picture,
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
              Image.asset(
                "assets/images/gold-medal.png",
                height: 48,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatarWidget(
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
