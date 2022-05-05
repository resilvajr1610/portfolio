import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../uteis/paleta_cores.dart';

class PortfolioMobile extends StatefulWidget {
  const PortfolioMobile({Key? key}) : super(key: key);

  @override
  _PortfolioMobileState createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
  @override
  Widget build(BuildContext context) {

    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          color: PaletaCores.corFundo,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: Container(
                    width: largura,
                    height: altura *0.40,
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
                            padding: EdgeInsets.only(top: 10,right: 30,left: 30),
                            child: Column(
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
                                         showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto Astral 3D"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/astralMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        //salvar requisição
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini1.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto Eleição 2022"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/voteMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        //salvar requisição
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini2.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto Moto - Táxi"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/mototaxiMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        //salvar requisição
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini3.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        //Navigator.push(context,MaterialPageRoute(builder: (context) => MedQuestMobile()));
                                        showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto MedQuest"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/medQuestMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        //salvar requisição
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini4.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        //Navigator.push(context,MaterialPageRoute(builder: (context) => BSJMobile()));
                                        showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto BSJ Transportes"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/transportesMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        //salvar requisição
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini5.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        showGeneralDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            barrierLabel: 'Dialog',
                                            transitionDuration: Duration(seconds: 1),
                                            pageBuilder: (_,__,___){
                                              return AlertDialog(
                                                alignment: Alignment.topLeft,
                                                backgroundColor: PaletaCores.corFundo,
                                                titleTextStyle: TextStyle(color: PaletaCores.corDestaque),
                                                title: Text("Projeto Celular.com"),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    width: largura,
                                                    child: Image.asset(
                                                      "imagens/CelularMobile.png",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                                actions: [
                                                  FlatButton(
                                                      onPressed: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Fechar',style: TextStyle(color: PaletaCores.corDestaque),)
                                                  ),
                                                ],
                                              );
                                            }
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: largura*0.4,
                                        height: largura*0.4,
                                        child: Image.asset(
                                          "imagens/mini6.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                            ),
                          )
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
