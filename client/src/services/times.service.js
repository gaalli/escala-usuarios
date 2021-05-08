import http from "../http-common";

class TimesDataService {
  getAll() {
    return http.get("/times");
	}

	getClassificacao() {
    return http.get("/times/classificacao");
	}

  create(data) {
    return http.post("/times", data);
  }

  getByUsuario(usuarioId){
    return http.get(`/times/byUsuario?usuarioId=${usuarioId}`);
  }
}

export default new TimesDataService();