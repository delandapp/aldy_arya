import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:publiclibrary/app/data/constans/endpoint.dart';
import 'package:publiclibrary/app/data/models/response_bookPopular.dart';
import 'package:publiclibrary/app/data/models/response_kategori.dart';
// import 'package:publiclibrary/app/data/models/response_koleksi.dart';
import 'package:publiclibrary/app/data/provider/api_provider.dart';
import '../../../data/provider/storage_provider.dart';
// import '../../../data/models/response_book_popular.dart';
import '../../../data/models/response_bookNew.dart';

class MyState<T1,T2,T3> {
  T1? state1;
  T2? state2;
  T3? state3;
  MyState({this.state1,this.state2,this.state3});
}
class HomeController extends GetxController with StateMixin<MyState<List<DataBookNew>, List<DataBookPopular>, List<DataKategori>>>{
  //TODO: Implement HomeController
    final RxString username = StorageProvider.read(StorageKey.username).obs;
    final TextEditingController search = TextEditingController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

   Future<void> getData() async{
    change(null, status: RxStatus.loading());

    try {
        final bearerToken = StorageProvider.read(StorageKey.bearerToken);
        final response = await ApiProvider.instance().get('${Endpoint.popular}/buku',options: Options(headers: {"Authorization": "Bearer $bearerToken"}));
        final responseKategori = await ApiProvider.instance().get(Endpoint.kategori,options: Options(headers: {"Authorization": "Bearer $bearerToken"}));
        final responseBukuNew = await ApiProvider.instance().get('${Endpoint.book}/new',options: Options(headers: {"Authorization": "Bearer $bearerToken"}));
        if (responseBukuNew.statusCode == 200) {
          final ResponseBookPopular responseBookPopular = ResponseBookPopular.fromJson(response.data);
          final ResponseKategori responseKategoriData = ResponseKategori.fromJson(responseKategori.data);
          final ResponseBookNew responseBookNew = ResponseBookNew.fromJson(responseBukuNew.data);
          if(responseBookNew.data!.isEmpty) {
            change(null, status: RxStatus.empty());
          } else {
            final newData = MyState(state1: responseBookNew.data, state2: responseBookPopular.data,state3: responseKategoriData.data);
            change(newData, status: RxStatus.success());
          }
        } else {
          change(null, status: RxStatus.error("Gagal mengambil data"));
        }

    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response?.data != null) {
          change(null, status: RxStatus.error("${e.response?.data['message']}"));
        }
      } else {
        change(null, status: RxStatus.error(e.message ?? ""));
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
