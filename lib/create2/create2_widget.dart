import 'dart:convert';

import 'package:seus_cachoss/backend/api_requests/api_service.dart';
import 'package:http/http.dart' as http;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create2_model.dart';
export 'create2_model.dart';

class Create2Widget extends StatefulWidget {
  const Create2Widget({Key? key}) : super(key: key);

  @override
  _Create2WidgetState createState() => _Create2WidgetState();
}

class _Create2WidgetState extends State<Create2Widget> {
  late Create2Model _model;

  final ApiService apiService = ApiService();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Create2Model());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    // _model.confirmPasswordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF552E30),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, -1.00),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                    child: Container(
                      width: double.infinity,
                      height: 21.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      alignment: AlignmentDirectional(0.00, 0.00),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 570.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFDBE2E7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(19.0),
                        border: Border.all(
                          color: Color(0xFFF1F4F8),
                          width: 2.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Telainicial');
                                      },
                                      child: Icon(
                                        Icons.chevron_left,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    55.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Criar Conta',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF101213),
                                        fontSize: 36.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 12.0, 0.0, 24.0),
                                child: Text(
                                  'Vamos começar preenchendo o formulário abaixo.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF57636C),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 9.0),
                                  child: Container(
                                    width: 350.0,
                                    child: TextFormField(
                                      controller: _model.emailAddressController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF57636C),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFDBE2E7),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFCBCDDD),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                24.0, 24.0, 20.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailAddressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 9.0),
                                  child: Container(
                                    width: 350.0,
                                    child: TextFormField(
                                      controller: _model.passwordController,
                                      autofillHints: [AutofillHints.password],
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF57636C),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFDBE2E7),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFCBCDDD),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                24.0, 24.0, 20.0, 24.0),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      validator: _model
                                          .passwordControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              // Align(
                              //   alignment: AlignmentDirectional(0.00, 1.00),
                              //   child: Padding(
                              //     padding: EdgeInsetsDirectional.fromSTEB(
                              //         0.0, 0.0, 0.0, 9.0),
                              //     child: Container(
                              //       width: 350.0,
                              //       child: TextFormField(
                              //         controller:
                              //             _model.confirmPasswordController,
                              //         autofocus: true,
                              //         autofillHints: [AutofillHints.password],
                              //         obscureText:
                              //             !_model.confirmPasswordVisibility,
                              //         decoration: InputDecoration(
                              //           labelText: 'Confirm Password',
                              //           labelStyle: FlutterFlowTheme.of(context)
                              //               .labelLarge
                              //               .override(
                              //                 fontFamily: 'Plus Jakarta Sans',
                              //                 color: Color(0xFF57636C),
                              //                 fontSize: 16.0,
                              //                 fontWeight: FontWeight.normal,
                              //               ),
                              //           enabledBorder: OutlineInputBorder(
                              //             borderSide: BorderSide(
                              //               color: Color(0xFFDBE2E7),
                              //               width: 0.0,
                              //             ),
                              //             borderRadius:
                              //                 BorderRadius.circular(12.0),
                              //           ),
                              //           focusedBorder: OutlineInputBorder(
                              //             borderSide: BorderSide(
                              //               color: Colors.transparent,
                              //               width: 0.0,
                              //             ),
                              //             borderRadius:
                              //                 BorderRadius.circular(12.0),
                              //           ),
                              //           errorBorder: OutlineInputBorder(
                              //             borderSide: BorderSide(
                              //               color: Colors.transparent,
                              //               width: 0.0,
                              //             ),
                              //             borderRadius:
                              //                 BorderRadius.circular(12.0),
                              //           ),
                              //           focusedErrorBorder: OutlineInputBorder(
                              //             borderSide: BorderSide(
                              //               color: Colors.transparent,
                              //               width: 0.0,
                              //             ),
                              //             borderRadius:
                              //                 BorderRadius.circular(12.0),
                              //           ),
                              //           filled: true,
                              //           fillColor: Color(0xFFCBCDDD),
                              //           contentPadding:
                              //               EdgeInsetsDirectional.fromSTEB(
                              //                   24.0, 24.0, 20.0, 24.0),
                              //           suffixIcon: InkWell(
                              //             onTap: () => setState(
                              //               () => _model
                              //                       .confirmPasswordVisibility =
                              //                   !_model
                              //                       .confirmPasswordVisibility,
                              //             ),
                              //             focusNode:
                              //                 FocusNode(skipTraversal: true),
                              //             child: Icon(
                              //               _model.confirmPasswordVisibility
                              //                   ? Icons.visibility_outlined
                              //                   : Icons.visibility_off_outlined,
                              //               color: Color(0xFF57636C),
                              //               size: 24.0,
                              //             ),
                              //           ),
                              //         ),
                              //         style: FlutterFlowTheme.of(context)
                              //             .bodyMedium
                              //             .override(
                              //               fontFamily: 'Readex Pro',
                              //               color: FlutterFlowTheme.of(context)
                              //                   .secondaryBackground,
                              //               fontSize: 16.0,
                              //               fontWeight: FontWeight.w500,
                              //             ),
                              //         validator: _model
                              //             .confirmPasswordControllerValidator
                              //             .asValidator(context),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 19.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    // onPressed: registerUser,

                                    onPressed: () async {
                                      final response = await http.post(
                                        Uri.parse(
                                            'http://localhost:8080/api/usuarioapi/registerApi'),
                                        headers: {
                                          'Content-Type': 'application/json',
                                        },
                                        body: jsonEncode({
                                          'email': _model
                                              .emailAddressController.text,
                                          'senha':
                                              _model.passwordController.text,
                                        }),
                                      );

                                      // Linhas de depuração:
                                      print(
                                          'Status da resposta: ${response.statusCode}');
                                      print(
                                          'Corpo da resposta: ${response.body}');

                                      if (response.statusCode == 201) {
                                        // Usuário registrado com sucesso, navegar para a próxima tela
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content:
                                                Text('Registro  bem-sucedido!'),
                                          ),
                                        );

                                        //aguardar um momento para que o usuario veja a mensagem de sucesso
                                        await Future.delayed(Duration(
                                            seconds:
                                                2)); //aguarde 2 segundos ou o tempo desejado
                                        Navigator.of(context)
                                            .pushNamed('login2Copy');
                                      } else if (response.statusCode == 200) {
                                        //o codigo 200 pode ser tratado separadamente, se necessário.
                                        //Faça o que for apropriado para o código 200.
                                      } else {
                                        // Mostrar erro ao usuário
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content:
                                                  Text('Erro ao registrar')),
                                        );
                                      }
                                    },

                                    text: 'Criar',
                                    options: FFButtonOptions(
                                      width: 270.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFA0A0A9),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
