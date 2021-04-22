import http from "../http-common";

class JogadorasDataService {

	getAll() {
		return http.get("/jogadoras");
	}

	findByFilter(filtro) {
 		var filtros = "";
		filtro.map((f) => filtros = filtros + f + "&");

		return http.get(`/jogadoras?${filtros}`);
	}
}

export default new JogadorasDataService();