import 'package:flutter/material.dart';
import 'package:flutter_desafio_ranking/app/modules/models/usuario_model.dart';

class CustomCircleAvatarWidget extends StatelessWidget {
  final double size;
  final String image;
  final UsuarioModel usuario;
  final bool noGlow;

  const CustomCircleAvatarWidget(
      {Key key, this.size, this.image, this.usuario, this.noGlow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                width: noGlow ? 3 : 5,
                color: Color(0xff17FAC3),
              ),
              boxShadow: noGlow
                  ? []
                  : [
                      BoxShadow(
                        color: Color(0xff17FAC3),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ],
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          usuario.name,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "${usuario.points}",
          style: TextStyle(
              color: Color(0xff43A783),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        )
      ],
    );
  }
}
