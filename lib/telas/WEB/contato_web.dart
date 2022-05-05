import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/telas/WEB/home_web.dart';
import 'package:portfolio/telas/WEB/portfolio_web.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../uteis/paleta_cores.dart';
import 'package:http/http.dart' as http;

class ContatoWeb extends StatefulWidget {
  const ContatoWeb({Key? key}) : super(key: key);

  @override
  _ContatoWebState createState() => _ContatoWebState();
}

class _ContatoWebState extends State<ContatoWeb> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerMensagem = TextEditingController();
  var enviando=false;

  void _launch(String url) async {
    try {
      bool launched =
      await launch(url, forceSafariVC: false, forceWebView: true);
      if (!launched) {
      }
    } catch (e) {
    }
  }

  Future enviarEmail({
    required String nome,
    required String email,
    required String titulo,
    required String mensagem
}) async {

    final serviceId='service_33bi3s5';
    final templateId='template_9rin4fi';
    final userId='r_n-7-a3h7O8llJlh';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
        url,
        headers: {
          'origin':'http://localhost',
          'Content-Type':'application/json'
        },
        body: json.encode({
          'service_id':serviceId,
          'template_id':templateId,
          'user_id':userId,
          'template_params':{
            'user_name':nome,
            'user_email':email,
            'to_email':'resilvajr@hotmail.com',
            'user_subject':titulo,
            'user_message':mensagem
          }
        }),
    );

    showSnackBar("Seus dados foram enviados com sucesso!"
        "\nEm breve entrarei em contato. Grato! Reginaldo Silva", Colors.green);

    setState(() {
      enviando=false;
    });

    _controllerTelefone.clear();
    _controllerNome.clear();
    _controllerMensagem.clear();
    _controllerEmail.clear();

    print(response.body);
  }

  void showSnackBar (String text, Color color){
    final snackBar = SnackBar(
        content: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      backgroundColor: color,
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
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
                        child: SingleChildScrollView(
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
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontFamily: 'ACCID'
                                              )
                                          ),
                                        ),
                                        SizedBox(width: 60),
                                        Text(
                                            'CONTATO',
                                            style: TextStyle(
                                                decorationColor: PaletaCores.corDestaque,
                                                decoration: TextDecoration.underline,
                                                decorationThickness: 4,
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontFamily: 'ACCID'
                                            )
                                        ),
                                      ],
                                    ),
                                    Container(width:largura*0.055),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 60),
                                    Text(
                                        'CONTATO',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'ACCID'
                                        )
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: altura*0.7,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  'Entre em contato:',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40,
                                                      fontFamily: 'ACCID'
                                                  )
                                              ),
                                              SizedBox(height: 30),
                                              Text(
                                                  'TELEFONE: (15) 99608-3456',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontFamily: 'ACCID'
                                                  )
                                              ),
                                              SizedBox(height: 15),
                                              Text(
                                                  'E-MAIL: resilvajr@hotmail.com',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                      fontFamily: 'ACCID'
                                                  )
                                              ),
                                              SizedBox(height: 120),
                                              Text(
                                                  'Me siga nas redes sociais!',
                                                  style: TextStyle(
                                                      color: PaletaCores.corDestaque,
                                                      fontSize: 50,
                                                      fontFamily: 'ACCID'
                                                  )
                                              ),
                                              Container(
                                                width: largura*0.2,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                          _launch('https://www.instagram.com/rdsilvajr/');
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.all(10),
                                                        width: 30,
                                                        height: 30,
                                                        child: Image.asset(
                                                          "imagens/insta.png",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        _launch('https://www.facebook.com/reginaldo.silvabass/');
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.all(10),
                                                        width: 30,
                                                        height: 30,
                                                        child: Image.asset(
                                                          "imagens/face.png",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        _launch('https://www.linkedin.com/in/reginaldo-silva-47098750/');
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.all(10),
                                                        width: 30,
                                                        height: 30,
                                                        child: Image.asset(
                                                          "imagens/linkedin.png",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: altura*0.7,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                  'Solicite um orçamento',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40,
                                                      fontFamily: 'ACCID'
                                                  )
                                              ),
                                              SizedBox(height: 15),
                                              Container(
                                                decoration: new BoxDecoration(
                                                  boxShadow: [
                                                    new BoxShadow(
                                                      color: Colors.black,
                                                      blurRadius: 20.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Card(
                                                  color: PaletaCores.corDestaque,
                                                  shadowColor: Colors.black54,
                                                  child: enviando==false?Container(
                                                    padding: EdgeInsets.all(40),
                                                    height: altura*0.6,
                                                    width: largura*0.3,
                                                    child: Column(
                                                      children: [
                                                        Card(
                                                          elevation:5,
                                                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15),
                                                          ),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                              color: PaletaCores.corPrimaria,
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: TextField(
                                                              keyboardType: TextInputType.text,
                                                              controller: _controllerNome,
                                                              decoration: InputDecoration(
                                                                border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                                                  hintText: "Nome",
                                                                  hintStyle: TextStyle(
                                                                      color: Color(0xff454444),
                                                                      fontFamily: 'ACCID',
                                                                      fontSize: 25
                                                                  )
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Card(
                                                          elevation:5,
                                                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15),
                                                          ),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                              color: PaletaCores.corPrimaria,
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: TextField(
                                                              keyboardType: TextInputType.emailAddress,
                                                              controller: _controllerEmail,
                                                              decoration: InputDecoration(
                                                                  border: InputBorder.none,
                                                                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                                                  hintText: "E-mail",
                                                                  hintStyle: TextStyle(
                                                                      color: Color(0xff454444),
                                                                      fontFamily: 'ACCID',
                                                                      fontSize: 25
                                                                  )
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment.centerLeft,
                                                          child: Card(
                                                            elevation:5,
                                                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: Container(
                                                              width: largura*0.12,
                                                              decoration: BoxDecoration(
                                                                color: PaletaCores.corPrimaria,
                                                                borderRadius: BorderRadius.circular(15),
                                                              ),
                                                              child: TextField(
                                                                keyboardType: TextInputType.number,
                                                                inputFormatters: [
                                                                  FilteringTextInputFormatter.digitsOnly,
                                                                  TelefoneInputFormatter()
                                                                ],
                                                                controller: _controllerTelefone,
                                                                decoration: InputDecoration(
                                                                    border: InputBorder.none,
                                                                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                                                    hintText: "Telefone",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(0xff454444),
                                                                        fontFamily: 'ACCID',
                                                                        fontSize: 25
                                                                    )
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Card(
                                                          elevation:5,
                                                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15),
                                                          ),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                              color: PaletaCores.corPrimaria,
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: TextField(
                                                              keyboardType: TextInputType.multiline,
                                                              controller: _controllerMensagem,
                                                              minLines: 10,
                                                              maxLines: 12,
                                                              decoration: InputDecoration(
                                                                  border: InputBorder.none,
                                                                  contentPadding: EdgeInsets.all(15),
                                                                  hintText: "Mensagem",
                                                                  hintStyle: TextStyle(
                                                                      color: Color(0xff454444),
                                                                      fontFamily: 'ACCID',
                                                                      fontSize: 25
                                                                  )
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        InkWell(
                                                          onTap: (){
                                                            if( _controllerTelefone.text.length>8
                                                                &&_controllerEmail.text.contains("@")
                                                                &&_controllerMensagem.text.length>10
                                                                &&_controllerNome.text.length>3
                                                            ){
                                                              enviarEmail(
                                                                  nome: _controllerNome.text,
                                                                  email: _controllerEmail.text,
                                                                  titulo: "Pedido de orçamento portfólio",
                                                                  mensagem: _controllerMensagem.text + '\n\nTefefone de contato '+_controllerTelefone.text
                                                              );
                                                              setState(() {
                                                                enviando = true;
                                                              });
                                                            }else{
                                                              print('erro');
                                                              showSnackBar('Dados inválidos! Verifique seus dados para serem enviados. Obrigado!',Colors.red);
                                                            }
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                                                            decoration: BoxDecoration(
                                                              color: Color(0xff252525),
                                                              borderRadius: BorderRadius.circular(15),
                                                            ),
                                                            child: Text(
                                                                'Solicitar',
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 25,
                                                                    fontFamily: 'ACCID'
                                                                )
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ):Container(
                                                      padding: EdgeInsets.all(20),
                                                      height: 450,
                                                      width: largura*0.3,
                                                      color: PaletaCores.corFundo,
                                                      child: Center(child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                              width: 60,
                                                              height: 60,
                                                              child: CircularProgressIndicator(color: PaletaCores.corDestaque)),
                                                          SizedBox(height: 10),
                                                          AutoSizeText(
                                                            'Enviando mensagem...',
                                                            style: TextStyle(
                                                                color: PaletaCores.corDestaque,
                                                                fontSize: 25,
                                                                fontFamily: 'ACCID'
                                                            ),
                                                          ),
                                                        ],
                                                      ))),
                                                ),
                                              )
                                            ],
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
