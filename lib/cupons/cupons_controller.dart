import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:seus_cachoss/models/cupom_model.dart';

class CuponsController {
  Dio dio = new Dio();
  CupomModel cupomModel = CupomModel();

  Future<List<CupomModel>> listarCupom() async {
    List<CupomModel> cupons = List.empty(growable: true);
    try {
      dynamic response = await dio.get(
          'http://localhost:8080/api/usuarioapi/couponsApi',
          options: Options(contentType: 'application/json; charset=UTF-8'));
      if (response.statusCode == 200) {
        for (Map<String, dynamic> item in response.data) {
          CupomModel p = CupomModel();
          p.setId(item.values.elementAt(0));
          p.setNome(nome: item.values.elementAt(2));
          p.setDesconto(desconto: item.values.elementAt(3));
          p.setStatusCupom(statusCupom: item.values.elementAt(5));
          p.setCodigo(codigo: item.values.elementAt(6));
          if (item.values.elementAt(4) != null)
            p.setImagem(base64.decode(item.values.elementAt(4)));
          else
            p.setImagem(base64.decode(
                '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'));
          print(item.values.elementAt(0));
          print(item.values.elementAt(2));
          print(item.values.elementAt(3));
          print(item.values.elementAt(6));
          print(item.values.elementAt(5));
          print(item.values.elementAt(4));
          cupons.add(p);
        }
      }
    } catch (e) {
      print(e);
    }
    return cupons;
  }
}
