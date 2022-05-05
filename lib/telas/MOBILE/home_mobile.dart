import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/telas/MOBILE/ContatoMobile.dart';
import 'package:portfolio/telas/MOBILE/PortfolioMobile.dart';
import 'package:portfolio/uteis/paleta_cores.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {

  @override
  Widget build(BuildContext context) {

    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: PaletaCores.corFundo,
            title: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Reginaldo Silva")
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: PaletaCores.corDestaque,
              indicatorWeight: 4,
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              tabs: [
                Tab(text: "HOME"),
                Tab(text: "PORTFÓLIO"),
                Tab(text: "CONTATO"),
              ],
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    color: PaletaCores.corFundo,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            child: Container(
                              width: largura,
                              height: altura *0.4,
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
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(40),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: altura*0.1,
                                            height: altura*0.1,
                                            child: Image.asset(
                                              "imagens/foto.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          AutoSizeText(
                                              'REGINALDO SILVA',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35,
                                                  fontFamily: 'ACCID'
                                              )
                                          ),
                                          AutoSizeText(
                                              'Desenvolvedor de Aplicativos em Flutter',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontFamily: 'ACCID'
                                              )
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
                                          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                                          child: AutoSizeText(
                                              'Formado em Análise e Desenvolvimento de Sistemas pela FATEC de Itapetininga. Desenvolvo aplicativos desde setembro de 2020, inicialmente para nativo Android (Java), em 2021 passei a desenvoler aplicativo híbrido em Flutter. Sigo em constante aprendizado e atualização com cursos complementares de Flutter (Web e responsivo). ',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontFamily: 'ACCID'
                                              )
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: largura,
                                          padding: EdgeInsets.all(15),
                                          alignment: Alignment.bottomRight,
                                          child: AutoSizeText(
                                              'Este site foi desenvolvido no Flutter WEB e hospedado no Hosting Firebase.',
                                              maxLines: 1,
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
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: PortfolioMobile(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: ContatoMobile(),
                )
              ],
            ),
          ),
        )
    );
  }
}
