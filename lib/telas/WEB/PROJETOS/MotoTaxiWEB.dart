import 'package:flutter/material.dart';
import 'package:portfolio/telas/WEB/PROJETOS/EleicaoWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/MedQuestWEB.dart';

import '../../../uteis/paleta_cores.dart';
import '../contato_web.dart';
import '../home_web.dart';
import '../portfolio_web.dart';

class MotoTaxiWEB extends StatefulWidget {
  const MotoTaxiWEB({Key? key}) : super(key: key);

  @override
  _MotoTaxiWEBState createState() => _MotoTaxiWEBState();
}

class _MotoTaxiWEBState extends State<MotoTaxiWEB> {
  @override
  Widget build(BuildContext context) {

    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: PaletaCores.corFundo,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  width: largura,
                  height: altura *0.60,
                  child: Image.asset(
                    "imagens/bg.png",
                    fit: BoxFit.cover,
                  ),
                )
            ),
            Positioned(
                top:    0,
                bottom: 0,
                left:   0,
                right:  0,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'Reginaldo Silva',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontFamily: 'ACCID'
                                        )
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeWeb()));
                                            },
                                            child: Text('HOME',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontFamily: 'ACCID'
                                                )
                                            ),
                                          ),
                                          SizedBox(width: 60),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => PortfolioWeb()));
                                            },
                                            child: Text(
                                                'PORTFÓLIO',
                                                style: TextStyle(
                                                    decorationColor: PaletaCores.corDestaque,
                                                    decoration: TextDecoration.underline,
                                                    decorationThickness: 4,
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontFamily: 'ACCID'
                                                )
                                            ),
                                          ),
                                          SizedBox(width: 60),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ContatoWeb()));
                                            },
                                            child: Text(
                                                'CONTATO',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontFamily: 'ACCID'
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(width:largura*0.055),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 60),
                                    Text(
                                        'PORTFÓLIO',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'ACCID'
                                        )
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EleicaoWEB()));
                                          },
                                          child: Image.asset(
                                            "imagens/setaesq.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MedQuestWEB()));
                                          },
                                          child: Image.asset(
                                            "imagens/setadir.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "imagens/mototaxi.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
