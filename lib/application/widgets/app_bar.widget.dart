import 'package:devquiz/application/constants/app_gradients.dart';
import 'package:devquiz/application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TODO - ALTERAR PARA RECEBER OS DADOS DA API
                  Text.rich(
                    TextSpan(
                        text: "Olá, ",
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                            text: "Vinícius",
                            style: AppTextStyles.titleBold,
                          )
                        ]),
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/44041869?s=400&u=6b9c86708fca609821ae0893ae2c93a928048b4a&v=4"))),
                  )
                ],
              ),
            ),
          ),
        );
}
