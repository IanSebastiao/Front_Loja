import 'package:app_loja_frontend/services/api_service.dart';

class ProdutoRepository {
  final ApiService apiServices;

  ProdutoRepository(this.apiServices);

  Future<Map<String, dynamic>> fetchProdutos({int page = 1}) async {
    try {
      return await apiServices.getProdutos(page: page);
    } catch (e) {
      throw Exception('Erro ao Buscar Produtos: $e');
    }
  }

  //   Future<void> addProduto(String token, Produto produto) async {
  //     // try {
  //     //   await apiServices.cadastrarProduto(token, Produto);
  //     // } catch (e) {
  //     //   throw Exception('Erro ao Cadastrar Produto: $e');
  //     // }
  //   }
}
