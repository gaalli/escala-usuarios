import http from "../http-common";

class JogadorasDataService {

  getAll() {
    return http.get("/jogadoras");
	}

	findByFilter(posicao) {
		var filtros = "";
		posicao.map((pos) => filtros= filtros + "posicao="+pos+"&");

		console.log(filtros);
    return http.get(`/jogadoras?${filtros}`);
  }
}

export default new JogadorasDataService();