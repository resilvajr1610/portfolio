import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/telas/WEB/contato_web.dart';
import 'package:portfolio/telas/WEB/portfolio_web.dart';
import '../../uteis/paleta_cores.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {

  @override
  void initState() {
    super.initState();
  }

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
                                    Row(
                                      children: [
                                        Text('HOME',
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
                                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => PortfolioWeb()));
                                          },
                                          child: Text(
                                              'PORTFÓLIO',
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
                                    Container(width:largura*0.055),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                            'REGINALDO SILVA',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 60,
                                                fontFamily: 'ACCID'
                                            )
                                        ),
                                        Text(
                                            'Desenvolvedor de Aplicativos em Flutter',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 35,
                                                fontFamily: 'ACCID'
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 30),
                                    Container(
                                      width: 180,
                                      height: 180,
                                      child: Image.asset(
                                        "imagens/foto.png",
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                          ),
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 180,vertical: 50),
                              child: Text(
                                'Formado em Análise e Desenvolvimento de Sistemas pela FATEC de Itapetininga. Desenvolvo aplicativos desde setembro de 2020, inicialmente para nativo Android (Java), em 2021 passei a desenvoler aplicativo híbrido em Flutter. Sigo em constante aprendizado e atualização com cursos complementares de Flutter (Web e responsivo). ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: 'ACCID'
                              )
                              ),
                            ),
                            Spacer(),
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
                        )
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}


