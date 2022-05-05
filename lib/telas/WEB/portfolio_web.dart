import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/telas/WEB/PROJETOS/AstralWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/BSJWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/CelularWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/EleicaoWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/MedQuestWEB.dart';
import 'package:portfolio/telas/WEB/PROJETOS/MotoTaxiWEB.dart';
import 'package:portfolio/telas/WEB/contato_web.dart';
import 'package:portfolio/telas/WEB/home_web.dart';

import '../../uteis/paleta_cores.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({Key? key}) : super(key: key);

  @override
  _PortfolioWebState createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
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
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(top: 40,right: 40,left: 40),
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
                                          Text(
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => AstralWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini1.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => EleicaoWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini2.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => MotoTaxiWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini3.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => MedQuestWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini4.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => BSJWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini5.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => CelularWEB()));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            width: largura*0.18,
                                            height: largura*0.18,
                                            child: Image.asset(
                                              "imagens/mini6.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                          'Este site foi desenvolvido no Flutter WEB e hospedado no Hosting Firebase.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontFamily: 'ACCID'
                                          )
                                      ),
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
